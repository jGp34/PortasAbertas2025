vert_speed += grav;

if (place_meeting(x, y + vert_speed, oObstacle)) {
	while (!place_meeting(x, y + sign(vert_speed) + 1, oObstacle)) {
		y += sign(vert_speed);
	}
    vert_speed = 0;
} else {
    y += vert_speed;
}
