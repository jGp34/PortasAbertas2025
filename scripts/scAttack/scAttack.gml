function tung_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxTungAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 68;
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
		
		var _attack_offset = 86;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 38;
		
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
	if (can_attack && key_attack) {
		can_attack = false;
		attack_timer = attack_cooldown; 
		if(vert_speed != 0){
			audio_play_sound(sfxBombardinoAttack, 1, false)
		
			var _attack_offset = 0;
			var _attack_x = x;
			var _attack_y = y + 48;
		
			var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBombardinoAttack);		
			_attack_instance.direction = attack_direction;
			_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
		}
		else{
			audio_play_sound(sfxBombardinoAttack2, 1, false)
		
			var _attack_offset = 44;
			var _attack_x = x + (_attack_offset * attack_direction);
			var _attack_y = y + 24;
		
			var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBombardinoAttack2);
			_attack_instance.direction = attack_direction;
			_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
		}
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
        
        var _attack_offset = 32;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 24;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTralaleroAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 7 * attack_direction;
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
        
        var _attack_offset = 36;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 18;
        
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
        
        var _attack_offset = 16;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 16;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBallerinaAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 8 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
		
		var _attack_x2 = x + (_attack_offset * 1.5 * attack_direction);
		var _attack_instance2 = instance_create_layer(_attack_x2, _attack_y, "Instances", oBallerinaAttack);    
        _attack_instance2.attack_dir = attack_direction;
		_attack_instance2.horizontal_speed = 4 * attack_direction;
		_attack_instance2.direction = attack_direction;
		_attack_instance2.image_xscale = (attack_direction == 1) ? -1 : 1;
		
    }
    
    attack_counter();
}

function boneca_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxBonecaAttack, 1, false);
        attack_timer = attack_cooldown;

        with (oBonecaAttack) {
            instance_destroy();
        }

        var base_x = x;
        var base_y = y + sprite_height / 2;

        var found_spot = false;
        var max_nudge = 32;
        var nudge_step = 2;

        var attack_w = sprite_width;
        var attack_h = sprite_height;

        var _attack_x = 0;
        var _attack_y = 0;

        if (!collision_rectangle(base_x - attack_w/2, base_y - attack_h/2,
                                 base_x + attack_w/2, base_y + attack_h/2, oObstacle, false, true)) {
            _attack_x = base_x;
            _attack_y = base_y;
            found_spot = true;
        } else {
            for (var r = nudge_step; r <= max_nudge; r += nudge_step) {
                for (var a = 0; a < 360; a += 30) {
                    var dx = lengthdir_x(r, a);
                    var dy = lengthdir_y(r, a);
                    var test_x = base_x + dx;
                    var test_y = base_y + dy;

                    if (!collision_rectangle(test_x - attack_w/2, test_y - attack_h/2,
                                             test_x + attack_w/2, test_y + attack_h/2, oObstacle, false, true)) {
                        _attack_x = test_x;
                        _attack_y = test_y;
                        found_spot = true;
                        break;
                    }
                }
                if (found_spot) break;
            }
        }

        if (!found_spot) return;

	var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBonecaAttack, {
	    attack_dir: attack_direction,
	    horizontal_speed: 16 * attack_direction,
	    direction: attack_direction,
	    image_xscale: (attack_direction == 1) ? -1 : 1
});

    }

    attack_counter();
}


function patapim_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxPatapimAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 14;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 24;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oPatapimAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 6 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
		
		
		var _attack2_x = x + (_attack_offset * -attack_direction);
		var _attack_instance2 = instance_create_layer(_attack2_x, _attack_y, "Instances", oPatapimAttack);
        _attack_instance2.attack_dir = -attack_direction;
		_attack_instance2.horizontal_speed = 6 * -attack_direction;
		_attack_instance2.direction = -attack_direction;
		_attack_instance2.image_xscale = (attack_direction == 1) ? 1 : -1;
    }
    
    attack_counter();
}

function gusini_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxGusiniAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 36;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 18;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oGusiniAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 5 * attack_direction;
		_attack_instance.direction = attack_direction;
    }
    
    attack_counter();
}

function svinino_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxSvininoAttack, 1, false)
		attack_timer = attack_cooldown; 
		

		var _attack_x = x + 2;
		var _attack_y = y - 16;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oSvininoAttack);
	}
	
	attack_counter();
}

function garam_attack() {
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxGaramAttack, 1, false);
		attack_timer = attack_cooldown;

		// Attack 1 (Forward melee)
		var offset1 = 42;
		var ax1 = x + (offset1 * attack_direction);
		var ay1 = y + 20;

		var atk1 = instance_create_layer(ax1, ay1, "Instances", oGaramAttack3);
		atk1.direction = attack_direction;
		atk1.image_xscale = (attack_direction == 1) ? -1 : 1;

		// Attack 2 (Forward projectile)
		var offset2 = 16;
		var ax2 = x + (offset2 * attack_direction);
		var ay2 = y + 16;

		var atk2 = instance_create_layer(ax2, ay2, "Instances", oGaramAttack1);
		atk2.attack_dir = attack_direction;
		atk2.horizontal_speed = 8 * attack_direction;
		atk2.direction = attack_direction;
		atk2.image_xscale = (attack_direction == 1) ? -1 : 1;

		// Attack 3 (Backward projectile)
		var offset3 = 16;
		var ax3 = x - (offset3 * attack_direction);
		var ay3 = y + 24;

		var atk3 = instance_create_layer(ax3, ay3, "Instances", oGaramAttack2);
		atk3.attack_dir = -attack_direction;
		atk3.horizontal_speed = 6 * -attack_direction;
		atk3.direction = -attack_direction;
		atk3.image_xscale = (attack_direction == 1) ? 1 : -1;

		// Attack 4 (Slowness mine, limit to 3)
		if (instance_number(oGaramAttack4) >= 3) {
			var oldest = noone;
			var oldest_time = 999999999;

			var attack_list = array_create(instance_number(oGaramAttack4));
			var index = 0;

			with (oGaramAttack4) {
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

		var offset4 = 32;
		var ax4 = x;
		var ay4 = y + 32;

		var atk4 = instance_create_layer(ax4, ay4, "Instances", oGaramAttack4);
		atk4.direction = attack_direction;
		atk4.image_xscale = (attack_direction == 1) ? -1 : 1;
		atk4.time_created = current_time;
	}

	attack_counter();
}

function trulimero_attack(){
    if (can_attack && key_attack) {
		if (instance_exists(oTrulimeroAttack)) return;
        can_attack = false;
        audio_play_sound(sfxTrulimeroAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 57;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 24;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTrulimeroAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 11 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
		if (place_meeting(_attack_instance.x, _attack_instance.y, oObstacle)) {
			attack_timer = attack_cooldown/4;
		}
    }
    
    attack_counter();
}

function bicus_attack() {
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxBicusAttack, 1, false);
		attack_timer = attack_cooldown;

		dash_speed = 14 * attack_direction;
		dash_duration = 20;
		dash_timer = dash_duration;
		is_dashing = true;

		var _attack_instance = instance_create_layer(x + 60 * attack_direction, y + 32, "Instances", oBicusAttack1);
		_attack_instance.owner = id;
		_attack_instance.direction = attack_direction;
		_attack_instance.lifetime = dash_duration;
	}
	attack_counter();
}

function bobrito_attack() {
    if (current_barrage >= max_barrages && !barrage_in_progress && reload_delay_timer <= 0 && reload_timer <= 0) {
        reload_delay_timer = reload_delay;
    }

    if (reload_delay_timer > 0) {
        reload_delay_timer -= 1;
        if (reload_delay_timer <= 0) {
            reload_timer = reload;
            audio_play_sound(sfxReload, 1, false);
        }
    }

    if (reload_timer > 0) {
        reload_timer -= 1;
        if (reload_timer <= 0) {
            current_barrage = 0;
        }
    }

    var reloading = (reload_timer > 0) || (reload_delay_timer > 0);

    if (!reloading && can_attack && key_attack && !barrage_in_progress) {
        barrage_in_progress = true;
        shots_fired_in_barrage = 0;
        shot_timer = 0;
        current_barrage += 1;

        can_attack = false;
        attack_timer = attack_cooldown;
    }

    if (barrage_in_progress) {
        if (shot_timer <= 0) {
            audio_play_sound(sfxBobritoAttack, 1, false);
            
            var _attack_offset = 32;
            var _attack_x = x + (_attack_offset * attack_direction);
            var _attack_y = y + 24;
            
            var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBobritoAttack);    
            _attack_instance.attack_dir = attack_direction;
            _attack_instance.horizontal_speed = 10 * attack_direction;
            _attack_instance.direction = attack_direction;
            _attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
            
            shots_fired_in_barrage += 1;

            if (shots_fired_in_barrage >= shots_per_barrage) {
                barrage_in_progress = false;
                shot_timer = 0;
            } else {
                shot_timer = shot_interval;
            }
        } else {
            shot_timer -= 1;
        }
    }

    if (!reloading) {
        attack_counter();
    }
}


function attack_counter(){
	if (!can_attack) {
		attack_timer -= 1;
		if (attack_timer <= 0) {
			can_attack = true;
		}
	}
}

function burbaloni_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxBurbaloniAttack, 1, false);
        attack_timer = attack_cooldown;

        var radius = 80;
        var angle = 0; // or spread if multiple

        var _attack_x = x + lengthdir_x(radius, angle);
        var _attack_y = y + lengthdir_y(radius, angle);

        var orb = instance_create_layer(_attack_x, _attack_y, "Instances", oBurbaloniAttack);
        orb.owner = id;
        orb.orbit_radius = radius;
        orb.orbit_angle = angle;
        orb.orbit_speed = 4;
    }

    attack_counter();
}

function tropi_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxTropiAttack, 1, false);
        attack_timer = attack_cooldown;

        if (instance_number(oTropiAttack) >= 3) {
            var oldest_instance = noone;
            var oldest_time = 9999999999;

            with (oTropiAttack) {
                if (time_created < oldest_time) {
                    oldest_time = time_created;
                    oldest_instance = id;
                }
            }
            if (instance_exists(oldest_instance)) {
                instance_destroy(oldest_instance);
            }
        }
        var _attack_x = x;
        var _attack_y = y + 24;

        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTropiAttack);

        _attack_instance.speed_h = 8 * attack_direction;
        _attack_instance.speed_v = -4;
        
        _attack_instance.time_created = current_time;
    }

    attack_counter();
}

function cacto_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        // Make sure you create this sound effect!
        audio_play_sound(sfxCactoAttack, 1, false);
        attack_timer = attack_cooldown; 
        
        var _attack_x = x;
        var _attack_y = y + 24;
        
        // This is the main projectile object we'll create next
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oCactoAttack1);
        
        // Set its speed and direction
        _attack_instance.attack_dir = attack_direction;
        _attack_instance.horizontal_speed = 7 * attack_direction; // Feel free to change the speed
        _attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
    }
    
    attack_counter();
}