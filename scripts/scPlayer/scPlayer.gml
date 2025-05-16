function inputCheck(){
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(vk_space);
	
	move = key_right - key_left;
	
	horz_speed = move * tungValues.walkSpeed;
	//show_debug_message(string(horz_speed)); //AI PAI PARA
}

function movement(){
	
	if (key_jump && place_meeting(x, y + 1, oObstacle)){
		vert_speed = vert_speed - tungValues.jumpSpeed;
	}
	
	if (place_meeting(x + horz_speed, y, oObstacle)){
		
		while(!place_meeting(x + sign(horz_speed), y, oObstacle)){
			
			x = x + sign(horz_speed);
		
		}
		
		horz_speed = 0;
	}
	
	x = x + horz_speed;
	if (horz_speed > 0) {
		image_xscale = -1;
	}
	else if (horz_speed < 0) {
		image_xscale = 1;
	}
}

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