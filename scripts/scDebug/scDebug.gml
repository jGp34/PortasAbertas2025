function ManualTransform() {
    if (keyboard_check_pressed(vk_enter)) {
        var px = x;
        var py = y;

        // Was the player standing on ground?
        var was_on_ground = place_meeting(px, py + 1, oGround);

        StopTransformSound();

        // Find current character index
        var current_index = -1;
        var list_length = array_length(global.character_list);
        for (var i = 0; i < list_length; i++) {
            if (global.character_list[i] == object_index) {
                current_index = i;
                break;
            }
        }

        // Cycle to next character
        var next_index = (current_index + 1) mod list_length;
        var new_player = global.character_list[next_index];

        // Transform
        instance_change(new_player, true);

        // Keep same position — let Step handle unsticking
        x = px;
        y = py;

        // Reset upward velocity so you don’t get shoved into ceilings
        if (vspeed < 0) vspeed = 0;
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