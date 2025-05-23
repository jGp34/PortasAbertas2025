if (is_dashing) {
	var _dir = sign(dash_speed);
	if (!place_meeting(x + dash_speed, y, oObstacle) && !place_meeting(x + dash_speed, y, oSpike)) {
		x += dash_speed;
	} else {
		is_dashing = false;
		dash_timer = 0;
	}

	dash_timer--;
	if (dash_timer <= 0) {
		is_dashing = false;
	}
}
else {
	inputCheck();
	movement();
	applyGravity();
}

ManualTransform();
bicus_attack();
