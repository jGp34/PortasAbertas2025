if(global.mode == 1)
{
	var px = x;
	var py = y;

	// Check if the player was originally on ground
	var was_on_ground = place_meeting(px, py + 1, oGround);

	StopTransformSound();
	var new_player;
	do {
		var index = irandom(array_length(global.character_list) - 1);
		new_player = global.character_list[index];
	} until (new_player != object_index);

	instance_change(new_player, true);

	x = px;
	y = py;

	// Move up if embedded in ground or spike
	while (place_meeting(x, y, oGround) || place_meeting(x, y, oSpike)) {
		y -= 1;
	}
	// Move down to ground if the player was originally on the ground
	if (was_on_ground) {
		while (!place_meeting(x, y + 1, oGround)) {
		    y += 1;
		}
	}

	// Check for spike collision and nudge
	if (place_meeting(x, y, oSpike)) {
		if (!place_meeting(x + 1, y, oSpike)) {
		    x += 1;
		} else if (!place_meeting(x - 1, y, oSpike)) {
		    x -= 1;
		}
	}
}
else if (global.mode == 2) {
    var px = x;
    var py = y;
    var current_depth = depth;

    StopTransformSound();

    instance_create_depth(px, py, current_depth, object_index);
    instance_destroy();
}
