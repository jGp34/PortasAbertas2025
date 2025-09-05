if (global.mode == 1) {
    // 1. Store the current state, INCLUDING direction.
    var px = x;
    var p_bottom = bbox_bottom;
    var p_xscale = image_xscale;         // <-- Save current visual direction
    var p_attack_dir = attack_direction; // <-- Save current attack direction
    
    StopTransformSound();

    // 2. Select a new, different character.
    var new_player_obj;
    do {
        var index = irandom(array_length(global.character_list) - 1);
        new_player_obj = global.character_list[index];
    } until (new_player_obj != object_index);

    // 3. Create a fresh instance of the new character.
    var new_inst = instance_create_depth(px, y, depth, new_player_obj);

    // 4. Apply the old character's state to the new one.
    with (new_inst) {
        // Restore the saved direction
        image_xscale = p_xscale;
        attack_direction = p_attack_dir;
        
        // Adjust position and speed
        y += p_bottom - bbox_bottom;
        vert_speed = 0;
    }

    // 5. Destroy the old instance.
    instance_destroy();
}