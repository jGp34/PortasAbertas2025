// oCelesteAttack - Create Event

// --- 1. Get Info from the Player & Set Up Properties ---
var _start_x = x;
var _start_y = y;
var _beam_width = 24;
segments = [];
hit_enemies_list = ds_list_create(); // NEW: List to track hit enemies

// --- 2. Calculate Segments ---
var _top = _start_y - (_beam_width / 2);
var _bottom = _start_y + (_beam_width / 2);
for (var i = floor(_top); i < floor(_bottom); i++) {
    if (collision_point(_start_x, i, oObstacle, false, true)) { continue; }
    var _end_x = _start_x;
    while (!collision_point(_end_x, i, oObstacle, false, true)) {
        _end_x += direction_to_fire;
        if (_end_x < 0 || _end_x > room_width) { break; }
    }
    _end_x -= direction_to_fire;
    array_push(segments, { x1: _start_x, y1: i, x2: _end_x });
}

// --- 3. Initial Damage Logic ---
if (array_length(segments) > 0) {
    var all_enemies_hit = ds_list_create();
    // ... (This part is the same, gathering enemies into 'all_enemies_hit')
    for (var i = 0; i < array_length(segments); i++) {
        var seg = segments[i];
        var segment_hit_list = ds_list_create();
        var hits = collision_line_list(seg.x1, seg.y1, seg.x2, seg.y1, oEnemy, false, true, segment_hit_list, false);
        if (hits > 0) {
            for (var j = 0; j < ds_list_size(segment_hit_list); j++) {
                var enemy_id = segment_hit_list[| j];
                if (ds_list_find_index(all_enemies_hit, enemy_id) == -1) { ds_list_add(all_enemies_hit, enemy_id); }
            }
        }
        ds_list_destroy(segment_hit_list);
    }

    var total_hits = ds_list_size(all_enemies_hit);
    if (total_hits > 0) {
        var closest_enemy = noone;
        var min_dist = 99999;
        // ... (Finding the closest enemy is the same)
        for (var i = 0; i < total_hits; i++) {
            var current_enemy = all_enemies_hit[| i];
            var dist = point_distance(_start_x, _start_y, current_enemy.x, current_enemy.y);
            if (dist < min_dist) { min_dist = dist; closest_enemy = current_enemy; }
        }

        // Apply effects and add to our "already hit" list
        for (var i = 0; i < total_hits; i++) {
            var target_enemy = all_enemies_hit[| i];
            if (instance_exists(target_enemy)) {
                ds_list_add(hit_enemies_list, target_enemy); // NEW: Add to our tracking list
                if (target_enemy == closest_enemy) { instance_destroy(target_enemy); }
                else { target_enemy.get_stunned(120); }
            }
        }
    }
    ds_list_destroy(all_enemies_hit);
}

// --- 4. Visual Timer ---
fade_timer = 10;
max_fade_time = 10;