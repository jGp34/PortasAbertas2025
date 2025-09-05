// In oPlayer - Collision with Pickup Event

// --- Attack Cleanup (This part is fine) ---
var _old_player_id = id;
with (oHotspotAttack) {
    if (owner_id == _old_player_id) {
        instance_destroy();
    }
}
with (oMatteoAttack) {
    if (owner == _old_player_id) {
        instance_destroy();
    }
}

// --- Character Transformation Logic ---

if (global.mode == 1) {
    // 1. Store the current state, INCLUDING direction.
    var px = x;
    var p_bottom = bbox_bottom;
    var p_xscale = image_xscale;          // <-- Save current visual direction
    var p_attack_dir = attack_direction;  // <-- Save current attack direction
    
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
		while (place_meeting(x, y, oObstacle)) {
            y -= 1;
        }
    }

    // 5. Destroy the old instance.
    instance_destroy();
}
// VVV ADD THIS BLOCK BACK IN VVV
else if (global.mode == 2) {
    // This mode refreshes the current character, triggering their Create Event audio.

    // 1. Store the current state.
    var px = x;
    var p_bottom = bbox_bottom;
    var p_xscale = image_xscale;
    var p_attack_dir = attack_direction;

    StopTransformSound();

    // 2. Create a fresh instance of the SAME character.
    var new_inst = instance_create_depth(px, y, depth, object_index);

    // 3. Apply the old character's state to the new one for a seamless transition.
    with (new_inst) {
        image_xscale = p_xscale;
        attack_direction = p_attack_dir;
        y += p_bottom - bbox_bottom;
        vert_speed = 0;
    }

    // 4. Destroy the old instance.
    instance_destroy();
}