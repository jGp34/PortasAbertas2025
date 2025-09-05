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

    // --- THE FIX: Nudge the new character out of the floor ---
    // This prevents getting stuck if the new character's mask is different.
    with (_new_inst) {
        while (place_meeting(x, y, oObstacle)) {
            y -= 1; // Move up one pixel at a time until free
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