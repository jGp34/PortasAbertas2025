function ManualTransform() {
    // 1. Determine the direction of change
    var _change_direction = keyboard_check_pressed(vk_enter) - keyboard_check_pressed(vk_backspace);

    if (_change_direction == 0) {
        return;
    }

    // Store the old instance's properties, INCLUDING direction
    var _px = x;
    var _py = y;
    var _p_xscale = image_xscale;
    var _p_attack_dir = attack_direction;
    var _old_id = id;

    StopTransformSound();

    // 3. Find current character's index
    var _current_index = -1;
    var _list_length = array_length(global.character_list);
    for (var i = 0; i < _list_length; i++) {
        if (global.character_list[i] == object_index) {
            _current_index = i;
            break;
        }
    }

    if (_current_index == -1) return;

    // 4. Calculate the next index
    var _next_index = (_current_index + _change_direction + _list_length) mod _list_length;
    var _new_player_obj = global.character_list[_next_index];

    // 5. Create the new player
    var _new_inst = instance_create_depth(_px, _py, depth, _new_player_obj);

    // Apply the PRESERVED state to the new instance
    _new_inst.image_xscale = _p_xscale;
    _new_inst.attack_direction = _p_attack_dir;
    if (_new_inst.vert_speed < 0) {
        _new_inst.vert_speed = 0;
    }

	// --- THE FIX v2: Separate nudging for floors and walls ---
	with (_new_inst) {
	    // Step 1: Attempt a LIMITED vertical nudge for floors.
	    // This tries to push you out of the floor, but gives up after 8 pixels
	    // to prevent the teleporting bug if you're actually in a wall.
	    var _vert_attempts = 0;
	    while (place_meeting(x, y, oObstacle) && _vert_attempts < 8) {
	        y -= 1;
	        _vert_attempts++;
	    }

	    // Step 2: If still stuck, perform a smarter horizontal nudge for walls.
	    // This only runs if the vertical nudge didn't fully solve the collision.
	    var _horz_attempts = 0;
	    while (place_meeting(x, y, oObstacle) && _horz_attempts < 64) {
	        // Check for a free space to the left and move there.
	        if (!place_meeting(x - 1, y, oObstacle)) {
	            x -= 1;
	        }
	        // Otherwise, check for a free space to the right and move there.
	        else if (!place_meeting(x + 1, y, oObstacle)) {
	            x += 1;
	        }
	        // If boxed in on all sides, break to prevent the game from freezing.
	        else {
	            break;
	        }
	        _horz_attempts++;
	    }
	}
    // Now, destroy the old player instance
    instance_destroy();

    // Run cleanup logic from the context of the new instance
    with (_new_inst)
    {
        with (oHotspotAttack) {
            if (owner_id == _old_id) instance_destroy();
        }
        with (oMatteoAttack) {
            if (owner == _old_id) instance_destroy();
        }
    }
}

function ChangeMode() 
{
	if (keyboard_check_pressed(ord("1"))) {
	    global.mode = 1;
	}

	if (keyboard_check_pressed(ord("2"))) {
	    global.mode = 2;
	}
}