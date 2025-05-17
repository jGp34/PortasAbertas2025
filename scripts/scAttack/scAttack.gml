function tung_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxTungAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 45;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTungAttack);
		_attack_instance.direction = attack_direction;
	}
	
	attack_counter();
}

function assassino_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxAssassinoAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 32;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oAssassinoAttack);
		_attack_instance.direction = attack_direction;
		
		var _attack2_x = x + (_attack_offset * -attack_direction);
		var _attack_instance2 = instance_create_layer(_attack2_x, _attack_y, "Instances", oAssassinoAttack);
		_attack_instance2.direction = -attack_direction;
	}
	
	attack_counter();
}

function udin_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxUdinAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 75;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oUdinAttack);		
		_attack_instance.direction = attack_direction;
	}
	
	attack_counter();
}


function attack_counter(){
	if (!can_attack) {
		attack_timer -= 1;
		if (attack_timer <= 0) {
			can_attack = true;
		}
	}
}

function attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxTungAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 45;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oAttack);
		_attack_instance.direction = attack_direction;
	}
	
	attack_counter();
}

