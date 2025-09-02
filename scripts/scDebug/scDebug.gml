function ManualTransform() {
    // 1. Determine the direction of change
    var _change_direction = 0;
    if (keyboard_check_pressed(vk_enter)) {
        _change_direction = 1;  // Forward
    } else if (keyboard_check_pressed(vk_backspace)) {
        _change_direction = -1; // Reverse
    }

    // 2. If no relevant key was pressed, exit the function
    if (_change_direction == 0) {
        return;
    }

    // --- The rest of the logic is now shared ---

    var px = x;
    var py = y;

    StopTransformSound();

    // 3. Find current character's index in the global list
    var current_index = -1;
    var list_length = array_length(global.character_list);
    for (var i = 0; i < list_length; i++) {
        if (global.character_list[i] == object_index) {
            current_index = i;
            break;
        }
    }

    // Safety check in case the character isn't in the list
    if (current_index == -1) return;

    // 4. Calculate the next index using the direction
    // This formula correctly wraps around in both directions
    var next_index = (current_index + _change_direction + list_length) mod list_length;
    var new_player = global.character_list[next_index];

    // 5. Perform the transformation
    instance_change(new_player, true);

    // Restore position and reset vertical speed to prevent physics issues
    x = px;
    y = py;
    if (vspeed < 0) vspeed = 0;
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