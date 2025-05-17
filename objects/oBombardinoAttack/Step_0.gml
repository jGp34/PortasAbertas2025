function applyGravity(){
	vert_speed = vert_speed + grav;
	
	if (place_meeting(x, y + vert_speed, oObstacle)) {
		
		while(!place_meeting(x, y + sign(vert_speed), oObstacle)) {
			y = y + sign(vert_speed);
		}
		
		
		vert_speed = 0;
		
	}
	
	y = y + vert_speed;
}
