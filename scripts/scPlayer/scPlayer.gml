function inputCheck(){

	key_left  = keyboard_check(ord("A")) || keyboard_check(vk_left);
	key_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
	
	key_jump = keyboard_check(vk_space) || keyboard_check(vk_up);

	key_attack = mouse_check_button_pressed(mb_left) || keyboard_check_pressed(ord("Z"));

	move = key_right - key_left;
	
	horz_speed = move * playerValues.walkSpeed;

	if (move != 0) {
		attack_direction = move;
	} else {
		attack_direction = -image_xscale;
	}
}

function movement(){
	
	if (key_jump && place_meeting(x, y + 1, oObstacle)){
		vert_speed = vert_speed - playerValues.jumpSpeed;
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

function attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 45;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oAttack);
		_attack_instance.image_angle = 90 * attack_direction;
		
		_attack_instance.direction = attack_direction;
	}
	
	if (!can_attack) {
		attack_timer -= 1;
		if (attack_timer <= 0) {
			can_attack = true;
		}
	}
}