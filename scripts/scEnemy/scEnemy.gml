function enMovement(){
	horz_speed = move * enValues.walkSpeed;
	
	if (place_meeting(x + horz_speed, y, oObstacle)){
		
		while(!place_meeting(x + sign(horz_speed), y, oObstacle)){
			
			x = x + sign(horz_speed);
		
		}
		
		horz_speed = 0;
		move = move * -1;
	}
	
	x = x + horz_speed;
	
	if (horz_speed > 0) {
		image_xscale = 1;
	}
	else if (horz_speed < 0) {
		image_xscale = -1;
	}
}