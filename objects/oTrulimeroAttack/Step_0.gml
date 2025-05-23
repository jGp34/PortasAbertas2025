x += horizontal_speed;

if (place_meeting(x, y, oObstacle)) {
    if (bounce_count == 0) {
        x -= horizontal_speed;
        horizontal_speed = -horizontal_speed;
        bounce_count = 1;
    } else {
		instance_destroy();
    }
}