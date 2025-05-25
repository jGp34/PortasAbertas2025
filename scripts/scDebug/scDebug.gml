function ManualTransform() {
    if (keyboard_check_pressed(vk_enter)) {
        var px = x;
        var py = y;

        var was_on_ground = place_meeting(px, py + 1, oGround);

        StopTransformSound();

        var current_index = -1;
        var list_length = array_length(global.character_list);
        for (var i = 0; i < list_length; i++) {
            if (global.character_list[i] == object_index) {
                current_index = i;
                break;
            }
        }

        var next_index = (current_index + 1) mod list_length;
        var new_player = global.character_list[next_index];

        instance_change(new_player, true);

        x = px;
        y = py;

        while (place_meeting(x, y, oGround) || place_meeting(x, y, oSpike)) {
            y -= 1;
        }
        if (was_on_ground) {
            while (!place_meeting(x, y + 1, oGround)) {
                y += 1;
            }
        }

        if (place_meeting(x, y, oSpike)) {
            if (!place_meeting(x + 1, y, oSpike)) {
                x += 1;
            } else if (!place_meeting(x - 1, y, oSpike)) {
                x -= 1;
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