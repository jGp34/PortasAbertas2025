function ManualTransform() {
	// In ManualTransform() - REVISED AND FIXED SCRIPT

	// 1. Determine the direction of change
	var _change_direction = keyboard_check_pressed(vk_enter) - keyboard_check_pressed(vk_backspace);

	// 2. If no relevant key was pressed, exit the function
	if (_change_direction == 0) {
	    return;
	}

	// --- The rest of the logic is now shared ---

	// Store the old instance's properties
	var _px = x;
	var _py = y;
	var _old_id = id;

	StopTransformSound();

	// 3. Find current character's index in the global list
	var _current_index = -1;
	var _list_length = array_length(global.character_list);
	for (var i = 0; i < _list_length; i++) {
	    if (global.character_list[i] == object_index) {
	        _current_index = i;
	        break;
	    }
	}

	// Safety check in case the character isn't in the list
	if (_current_index == -1) return;

	// 4. Calculate the next index
	var _next_index = (_current_index + _change_direction + _list_length) mod _list_length;
	var _new_player_obj = global.character_list[_next_index];

	// 5. Perform the transformation SAFELY
	// Create the new player at the old position
	var _new_inst = instance_create_depth(_px, _py, depth, _new_player_obj);

	// Prevent the new instance from inheriting weird physics momentum
	if (_new_inst.vert_speed < 0) {
	    _new_inst.vert_speed = 0;
	}

	// Now, destroy the old player instance (this one)
	instance_destroy();

	// Because the old instance is now destroyed, we need to stop this script.
	// The cleanup of old attacks happens below, but we run it from the NEW instance.
	with (_new_inst)
	{
	    // Clean up Hotspot's attack
	    with (oHotspotAttack) {
	        if (owner_id == _old_id) {
	            instance_destroy();
	        }
	    }

	    // Clean up Matteo's spike ball
	    with (oMatteoAttack) {
	        if (owner == _old_id) {
	            instance_destroy();
	        }
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