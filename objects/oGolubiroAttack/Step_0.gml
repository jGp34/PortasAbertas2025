// oGolubiroAttack - Step Event

// Only run the stun check ONCE on the first frame
if (!has_flashed && instance_exists(owner)) {
    has_flashed = true; // Set the flag so this doesn't run again

    var _rays = 7; // How many lines to check (more is more accurate)
    
    var enemies_in_cone = ds_list_create();
    var _player_dir = (owner.attack_direction == 1) ? 0 : 180;
    
    // Check several lines in a fan shape to simulate a cone
    for (var i = 0; i < _rays; i++) {
        var _angle_offset = lerp(-cone_angle / 2, cone_angle / 2, i / (_rays - 1));
        var _current_angle = _player_dir + _angle_offset;
        
        var _end_x = owner.x + lengthdir_x(cone_range, _current_angle);
        var _end_y = owner.y + lengthdir_y(cone_range, _current_angle);
        
        var hit_list = ds_list_create();
        var hit_count = collision_line_list(owner.x, owner.y, _end_x, _end_y, oEnemy, false, true, hit_list, false);
        
        // Add any unique enemies found to our main list
        if (hit_count > 0) {
            for (var j = 0; j < hit_count; j++) {
                var enemy_id = hit_list[| j];
                if (ds_list_find_index(enemies_in_cone, enemy_id) == -1) {
                    ds_list_add(enemies_in_cone, enemy_id);
                }
            }
        }
        ds_list_destroy(hit_list);
    }

    // Now, stun every unique enemy we found in the cone
    for (var i = 0; i < ds_list_size(enemies_in_cone); i++) {
        var target = enemies_in_cone[| i];
        if (instance_exists(target)) {
            target.get_stunned(180);
        }
    }
    ds_list_destroy(enemies_in_cone);
}

// Countdown lifetime and destroy the object
lifetime -= 1;
if (lifetime <= 0) {
    instance_destroy();
}