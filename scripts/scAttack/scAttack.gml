function attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxTungAttack, 1, false)
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