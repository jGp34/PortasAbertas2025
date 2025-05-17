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
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
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
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
		
		var _attack2_x = x + (_attack_offset * -attack_direction);
		var _attack_instance2 = instance_create_layer(_attack2_x, _attack_y, "Instances", oAssassinoAttack);
		_attack_instance2.direction = -attack_direction;
		_attack_instance2.image_xscale = (attack_direction == 1) ? 1 : -1;
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
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
	}
	
	attack_counter();
}

function saturno_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxSaturnoAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 32;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 32;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oSaturnoAttack);		
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
	}
	
	attack_counter();
}

function bombardino_attack(){
	if (can_attack && key_attack && vert_speed != 0) {
		can_attack = false;
		audio_play_sound(sfxBombardinoAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 0;
		var _attack_x = x;
		var _attack_y = y + 48;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBombardinoAttack);		
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
	}
	
	attack_counter();
}

function chimpanzini_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxChimpanziniAttack, 1, false)
		attack_timer = attack_cooldown; 

		if (instance_number(oChimpanziniAttack) >= 4) {
			var oldest = noone;
			var oldest_time = 999999999;

			var attack_list = array_create(instance_number(oChimpanziniAttack));
			var index = 0;

			with (oChimpanziniAttack) {
				attack_list[index++] = id;
			}

			for (var i = 0; i < array_length(attack_list); i++) {
				var inst = attack_list[i];
				if (variable_instance_exists(inst, "time_created")) {
					if (inst.time_created < oldest_time) {
						oldest_time = inst.time_created;
						oldest = inst;
					}
				}
			}

			if (oldest != noone) {
				with (oldest) {
					instance_destroy();
				}
			}
		}

		var _attack_offset = 0;
		var _attack_x = x;
		var _attack_y = y + 32;

		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oChimpanziniAttack);		
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
	}

	attack_counter();
}


function lirili_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxLiriliAttack, 1, false)
		attack_timer = attack_cooldown; 
		if (instance_number(oLiriliAttack) >= 2) {
			var oldest = noone;
			var oldest_time = 999999999;

			var attack_list = array_create(instance_number(oLiriliAttack));
			var index = 0;

			with (oLiriliAttack) {
				attack_list[index++] = id;
			}

			for (var i = 0; i < array_length(attack_list); i++) {
				var inst = attack_list[i];
				if (variable_instance_exists(inst, "time_created")) {
					if (inst.time_created < oldest_time) {
						oldest_time = inst.time_created;
						oldest = inst;
					}
				}
			}

			if (oldest != noone) {
				with (oldest) {
					instance_destroy();
				}
			}
		}

		var _attack_offset = 0;
		var _attack_x = x;
		var _attack_y = y + 16;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oLiriliAttack);		
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
	}
	
	attack_counter();
}

function tralalero_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxTralaleroAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 16;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 16;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTralaleroAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 6 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
    }
    
    attack_counter();
}

function tripi_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxTripiAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 32;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 8;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTripiAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 5 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
    }
    
    attack_counter();
}

function glorbo_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxGlorboAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 16;
        var _attack_x = x + (_attack_offset * attack_direction);
		
        var _attack_y1 = y;
        var _attack_instance1 = instance_create_layer(_attack_x, _attack_y1, "Instances", oGlorboAttack);    
        _attack_instance1.attack_dir = attack_direction;
		_attack_instance1.horizontal_speed = 11 * attack_direction;
		_attack_instance1.direction = attack_direction;
		_attack_instance1.image_xscale = (attack_direction == 1) ? -1 : 1;
		
        var _attack_y2 = y + 16;
        var _attack_instance2 = instance_create_layer(_attack_x, _attack_y2, "Instances", oGlorboAttack);    
        _attack_instance2.attack_dir = attack_direction;
		_attack_instance2.horizontal_speed = 11 * attack_direction;
		_attack_instance2.direction = attack_direction;
		_attack_instance2.image_xscale = (attack_direction == 1) ? -1 : 1;
		
        var _attack_y3 = y + 32;
        var _attack_instance3 = instance_create_layer(_attack_x, _attack_y3, "Instances", oGlorboAttack);    
        _attack_instance3.attack_dir = attack_direction;
		_attack_instance3.horizontal_speed = 11 * attack_direction;
		_attack_instance3.direction = attack_direction;
		_attack_instance3.image_xscale = (attack_direction == 1) ? -1 : 1;
		
        var _attack_y4 = y + 48;
        var _attack_instance4 = instance_create_layer(_attack_x, _attack_y4, "Instances", oGlorboAttack);    
        _attack_instance4.attack_dir = attack_direction;
		_attack_instance4.horizontal_speed = 11 * attack_direction;
		_attack_instance4.direction = attack_direction;
		_attack_instance4.image_xscale = (attack_direction == 1) ? -1 : 1;
    }
    
    attack_counter();
}

function fruli_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxFruliAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 8;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 16;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oFruliAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 16 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
    }
    
    attack_counter();
}

function ballerina_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxBallerinaAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 8;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 16;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBallerinaAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 8 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
    }
    
    attack_counter();
}

function boneca_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxBonecaAttack, 1, false);
        attack_timer = attack_cooldown;

        // Destroy existing boneca attack if one exists
        with (oBonecaAttack) {
            instance_destroy();
        }

        var _attack_offset = 64;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y;

        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBonecaAttack, {
            attack_dir: attack_direction,
            horizontal_speed: 16 * attack_direction,
            direction: attack_direction,
            image_xscale: (attack_direction == 1) ? -1 : 1
        });
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

function patapim_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxPatapimAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 12;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 24;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oPatapimAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 5 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
		
		
		var _attack2_x = x + (_attack_offset * -attack_direction);
		var _attack_instance2 = instance_create_layer(_attack2_x, _attack_y, "Instances", oPatapimAttack);
        _attack_instance2.attack_dir = -attack_direction;
		_attack_instance2.horizontal_speed = 5 * -attack_direction;
		_attack_instance2.direction = -attack_direction;
		_attack_instance2.image_xscale = (attack_direction == 1) ? 1 : -1;
    }
    
    attack_counter();
}
