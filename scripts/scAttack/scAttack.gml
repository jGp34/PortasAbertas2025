function attack_counter(){
	if (!can_attack) {
		attack_timer -= 1;
		if (attack_timer <= 0) {
			can_attack = true;
		}
	}
}

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
			audio_play_sound(sfxBombardinoAttack1, 1, false)
		
			var _attack_offset = 0;
			var _attack_x = x;
			var _attack_y = y + 48;
		
			var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBombardinoAttack1);		
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

		// Attack 4 (Slowness mine, unlimited now)
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
        audio_play_sound(sfxTropiAttack1, 1, false);
        attack_timer = attack_cooldown;

        // Spawn position
        var _attack_x = x + 32;
        var _attack_y = y + 32;

        // Create attack instance
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTropiAttack);

        // --- START: CORRECTED NUDGE LOGIC ---
        // This will push the attack out of any obstacle it spawns in.
        var _max_nudges = 32;
        var _nudge_count = 0;
        
        // Step 1: Nudge Horizontally to escape side walls
        while (place_meeting(_attack_instance.x, _attack_instance.y, oObstacle) && _nudge_count < _max_nudges) {
            _attack_instance.x -= attack_direction;
            _nudge_count++;
        }

        // Step 2: Nudge Vertically to escape the floor
        _nudge_count = 0;
        while (place_meeting(_attack_instance.x, _attack_instance.y, oObstacle) && _nudge_count < _max_nudges) {
            _attack_instance.y -= 1; // Corrected: Push UPWARDS to escape the floor
            _nudge_count++;
        }
        
        // Final check: If still stuck, destroy it to prevent getting stuck.
        if (place_meeting(_attack_instance.x, _attack_instance.y, oObstacle)) {
            instance_destroy(_attack_instance);
            can_attack = true;
            return;
        }
        // --- END: CORRECTED NUDGE LOGIC ---

        // Attack properties
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
        audio_play_sound(sfxCactoAttack1, 1, false);
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

function tric_attack() {
    // State machine for Tric's minigun attack
    switch (tric_state) {
        
        // --- STATE 1: Ready to Fire ---
        case TRIC_STATE.READY:
            // Check if we can start a new attack
            if (can_attack && key_attack) {
                // Start the cooldown timer immediately
                can_attack = false;
                attack_timer = attack_cooldown;
                
                // Play wind-up sound
                audio_play_sound(sfxTricAttack2, 1, false);
                
                // Set timer for the wind-up phase and switch state
                tric_timer = TRIC_WINDUP_TIME;
                tric_state = TRIC_STATE.WINDUP;
                
                // Root the player in place during wind-up (the risk!)
                hspeed = 0;
            }
            break;

        // --- STATE 2: Winding Up ---
        case TRIC_STATE.WINDUP:
            // The player is stuck in place here
            hspeed = 0;
            
            // Countdown the wind-up timer
            tric_timer--;
            if (tric_timer <= 0) {
                // Wind-up is over, start firing
                tric_shots_fired = 0;
                tric_timer = TRIC_SHOT_INTERVAL; // Set timer for the first shot
                tric_state = TRIC_STATE.FIRING;
            }
            break;
            
        // --- STATE 3: Firing the Barrage ---
        case TRIC_STATE.FIRING:
            // Apply constant recoil (the consequence!)
			var _recoil_move = TRIC_RECOIL_STRENGTH * attack_direction;

			// Check if the spot we want to move to is free BEFORE moving!
			if (!place_meeting(x - _recoil_move, y, oObstacle)) {
			    x -= _recoil_move;
			}
            
            // Countdown timer for the next shot
            tric_timer--;
            if (tric_timer <= 0) {
                // Time to fire a bullet
                audio_play_sound(sfxTricAttack1, 1, false);
                
                // Calculate bullet spawn position
                var _attack_offset = 40;
                var _attack_x = x + (_attack_offset * attack_direction);
                var _attack_y = y + 24;
                
                // Calculate direction with random spread
                var _base_dir = (attack_direction == 1) ? 0 : 180;
                var _spread = random_range(-TRIC_BULLET_SPREAD / 2, TRIC_BULLET_SPREAD / 2);
                var _bullet_dir = _base_dir + _spread;
                
                // Create the bullet
                var _bullet = instance_create_layer(_attack_x, _attack_y, "Instances", oTricAttack);
                _bullet.speed = 12; // Or whatever speed you like
                _bullet.direction = _bullet_dir;
                
                // Increment shot counter and reset timer
                tric_shots_fired++;
                tric_timer = TRIC_SHOT_INTERVAL;
                
                // Check if the barrage is finished
                if (tric_shots_fired >= TRIC_SHOTS_PER_BARRAGE) {
                    // Barrage over, return to ready state
                    tric_state = TRIC_STATE.READY;
                }
            }
            break;
    }
    
    // The main attack cooldown runs independently of the states
    attack_counter();
}

function hotspot_attack() {
	if (can_attack && key_attack) {
		can_attack = false;

		if (instance_exists(oHotspotAttack)) {
			// Detonation logic is the same
			with (oHotspotAttack) {
				instance_destroy();
			}
			attack_timer = attack_cooldown;
		} else {
			audio_play_sound(sfxHotspotAttack, 1, false);

			// 1. Propose an ideal spawn position
			var _spawn_x = x + (24 * attack_direction);
			var _spawn_y = y - 6;

			// 2. Create the attack instance
			var _attack = instance_create_layer(_spawn_x, _spawn_y, "Instances", oHotspotAttack);

			// --- 3. SMARTER TWO-STEP NUDGE LOGIC ---
			var _max_nudges = 32;
			var _nudge_count = 0;
			
			// Step 1: Try to fix HORIZONTAL position (for side walls)
			while (place_meeting(_attack.x, _attack.y, oObstacle) && _nudge_count < _max_nudges) {
				_attack.x -= attack_direction;
				_nudge_count++;
			}

			// Step 2: If still stuck, try to fix VERTICAL position (for ceilings)
			// This second loop only runs if the horizontal nudge wasn't enough.
			_nudge_count = 0;
			while (place_meeting(_attack.x, _attack.y, oObstacle) && _nudge_count < _max_nudges) {
				_attack.y += 1;
				_nudge_count++;
			}
			
			// 4. Final check: If still stuck after all that, it's an impossible spawn.
			if (place_meeting(_attack.x, _attack.y, oObstacle)) {
				instance_destroy(_attack);
				can_attack = true;
				return;
			}

			// 5. Now that it's safe, launch it!
			_attack.speed_h = 8 * attack_direction;
			_attack.speed_v = -5;
			_attack.owner_id = id;
			attack_timer = attack_cooldown / 2;
		}
	}
	attack_counter();
}

function tatata_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        // Make sure to create this sound effect in your asset browser!
        audio_play_sound(sfxTatataAttack, 1, false); 
        attack_timer = attack_cooldown; 
        
        // Adjust the spawn position to fit Tatata's sprite
        var _attack_offset = 40;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 24;
        
        // Create the gas cloud instance
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTatataAttack);  
        
        // Set its speed and direction
        _attack_instance.horizontal_speed = 6 * attack_direction;
        _attack_instance.image_xscale = (attack_direction == 1) ? 1 : -1;
    }
    
    attack_counter();
}

function frigo_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		audio_play_sound(sfxFrigoAttack, 1, false)
		attack_timer = attack_cooldown; 
		
		var _attack_offset = 64;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y;
		
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oFrigoAttack);
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
	}
	
	attack_counter();
}

function celeste_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxCelesteAttack, 1, false);
        attack_timer = attack_cooldown;

        // Define the starting position
        var _start_x = x + (16 * attack_direction);
        var _start_y = y + 8;

        // Create the beam object and pass it the direction it should fire in
        instance_create_layer(_start_x, _start_y, "Instances", oCelesteAttack, {
            direction_to_fire: attack_direction
        });
    }

    attack_counter();
}

function golubiro_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        attack_timer = attack_cooldown;

        // Check which attack mode is currently active
        switch (combo_mode) {
            
            // --- MODE 1: FIRE THE STUN CONE ---
            case COMBO_ATTACK_MODE.STUN_CONE:
                audio_play_sound(sfxGolubiroAttack1, 1, false); // Create this sound
                
                // Create the cone effect object
                var _cone = instance_create_layer(x, y, "Instances", oGolubiroAttack1);
                _cone.owner = id; // Tell the cone who fired it
                
                // Switch to the next mode for the next attack
                combo_mode = COMBO_ATTACK_MODE.TELEPORT_BULLET;
                break;
            
            // --- MODE 2: FIRE THE TELEPORT BULLET ---
            case COMBO_ATTACK_MODE.TELEPORT_BULLET:
                audio_play_sound(sfxGolubiroAttack2, 1, false); // Create this sound
                
                var _attack_offset = 32;
                var _attack_x = x + (_attack_offset * attack_direction);
                var _attack_y = y + 24;
                
                // Create the bullet projectile
                var _bullet = instance_create_layer(_attack_x, _attack_y, "Instances", oGolubiroAttack2);
                _bullet.owner = id; // The bullet needs to know who to teleport
                _bullet.horizontal_speed = 12 * attack_direction;
                _bullet.image_xscale = attack_direction;
                
                // Reset back to the first mode for the next attack
                combo_mode = COMBO_ATTACK_MODE.STUN_CONE;
                break;
        }
    }
    
    attack_counter();
}

function matteo_attack() {
    // Only check for the attack key, the cooldown is not needed for this weapon
    if (key_attack) { 
        
        // If the ball is NOT out, throw it
        if (!instance_exists(oMatteoAttack)) {
            can_attack = false;
            attack_timer = attack_cooldown; // A short cooldown after throwing
            
            var _ball = instance_create_layer(x, y, "Instances", oMatteoAttack);
            _ball.owner = id; // Tell the ball who its owner is
            
            // Give it an initial launch speed
            var _launch_speed = 10;
            var _launch_dir = (attack_direction == 1) ? 25 : 155;
            _ball.hspd = lengthdir_x(_launch_speed, _launch_dir);
            _ball.vspd = lengthdir_y(_launch_speed, _launch_dir);
            
            // Store the ball's ID so we know it's out
            spike_ball_instance = _ball;
			audio_play_sound(sfxMatteoAttack1, 1, false);
        }
        // If the ball IS out, recall it
        else {
            // Tell the ball to start retracting
            with (spike_ball_instance) {
                is_retracting = true;
				audio_play_sound(sfxMatteoAttack2, 1, false);
            }
        }
    }
    
    attack_counter(); // This handles the cooldown after the initial throw
}

function cocofanto_attack() {
	// PRIORITY 1: Check for an instant bonus shot first.
	// This action ignores the main cooldown (`can_attack`).
	if (key_attack && bonus_ranged_shots > 0) {
		bonus_ranged_shots -= 1;
		audio_play_sound(sfxCocofantoAttack2, 1, false); // Ranged sound
		
		var _attack_offset = 40;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;
		
		// Create the RANGED bullet object
		var _bullet = instance_create_layer(_attack_x, _attack_y, "Instances", oCocofantoAttack2);
		_bullet.horizontal_speed = 10 * attack_direction;
		_bullet.image_xscale = (attack_direction == 1) ? 1 : -1;
	}
	// PRIORITY 2: If no bonus shot was fired, try a normal attack.
	// This "else if" is crucial to prevent firing two attacks on one press.
	// This action respects the cooldown.
	else if (can_attack && key_attack) {
		can_attack = false;
		attack_timer = attack_cooldown;

		var _attack_offset = 40;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;

		// Check if the normal attack should be ranged or melee
		if (has_ranged_shot) {
			has_ranged_shot = false;
			audio_play_sound(sfxCocofantoAttack2, 1, false); // Ranged sound

			// Create the RANGED bullet object
			var _bullet = instance_create_layer(_attack_x, _attack_y, "Instances", oCocofantoAttack2);
			_bullet.horizontal_speed = 10 * attack_direction;
			_bullet.image_xscale = (attack_direction == 1) ? 1 : -1;
		} else {
			audio_play_sound(sfxCocofantoAttack1, 1, false); // Melee sound

			// Create the MELEE attack object
			var _melee = instance_create_layer(_attack_x, _attack_y, "Instances", oCocofantoAttack1);
			_melee.owner_id = id;
			_melee.image_xscale = (attack_direction == 1) ? 1 : -1;
		}
	}
	
	// The cooldown timer for the normal attack always runs.
	attack_counter();
}

function tob_attack() {
	if (can_attack && key_attack) {
		can_attack = false;
		attack_timer = attack_cooldown;
		audio_play_sound(sfxTobAttack, 1, false);

		var _attack_offset = 24;
		// Use the consistent 'attack_direction' variable, not image_xscale
		var _attack_x = x + (_attack_offset * attack_direction); 
		var _attack_y = y;

		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oTobAttack);

		// Set the initial direction for the tumbleweed
		with (_attack_instance) {
			// --- THIS IS THE FIX ---
			// Read the player's 'attack_direction' variable directly.
			attack_direction = other.attack_direction;
			
			// --- NUDGE LOGIC ---
			var _max_nudges = 32;
			var _nudge_count = 0;
			
			while (place_meeting(x, y, oObstacle) && _nudge_count < _max_nudges) {
				x -= attack_direction;
				_nudge_count++;
			}
			_nudge_count = 0;
			while (place_meeting(x, y, oObstacle) && _nudge_count < _max_nudges) {
				y += 1;
				_nudge_count++;
			}
		}
	}
	attack_counter();
}

function sigma_attack(){
	if (can_attack && key_attack) {
		can_attack = false;
		// Make sure to create this sound effect in your asset browser!
		audio_play_sound(sfxSigmaAttack, 1, false);
		attack_timer = attack_cooldown; 
		
		// Adjust spawn position to fit Sigma's sprite
		var _attack_offset = 32;
		var _attack_x = x + (_attack_offset * attack_direction);
		var _attack_y = y + 24;
		
		// Create the projectile
		var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oSigmaAttack);
		
		// Set the projectile's initial properties
		_attack_instance.direction_multiplier = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
	}
	
	attack_counter();
}

function crocodildo_attack() {
    // --- Handle Player Input ---
    if (key_attack) {
        // ACTION 1: Cast the main AoE Dance Attack
        if (can_cast_main_attack && !is_shielded) {
            can_cast_main_attack = false;
            main_attack_timer = main_attack_cooldown;
            is_main_attack_active = true;
            can_cast_shield = true;
            
            // Start the 10-second timer for the music
            music_timer = 10 * game_get_speed(gamespeed_fps);
            
            audio_stop_sound(sfxCrocodildo);
            audio_play_sound(sfxCrocodildoAttack1, 1, false);
            
            instance_create_layer(x, y, "Instances", oCrocodildoFlash1);

            var _aoe_radius = 500;
            var _dance_duration = 10 * game_get_speed(gamespeed_fps);
            with (oEnemy) {
                if (distance_to_object(other) <= _aoe_radius) {
                    start_dancing(_dance_duration);
                }
            }
        }
        // ACTION 2: Activate the Shield
        // NEW condition: Check if the music_timer is still greater than 0
        else if (is_main_attack_active && can_cast_shield && !is_shielded && music_timer > 0) {
            can_cast_shield = false;
            shield_attack_timer = shield_attack_cooldown;
            audio_play_sound(sfxCrocodildoAttack2, 1, false);

            is_shielded = true;
            shield_timer = shield_duration;
            rainbow_hue = 0;
        }
    }

    // --- Handle Cooldowns ---
    // Main attack cooldown timer (this remains the same)
    if (!can_cast_main_attack) {
        main_attack_timer--;
        if (main_attack_timer <= 0) {
            can_cast_main_attack = true;
            is_main_attack_active = false;
            can_cast_shield = false;
        }
    }
    
    // Shield ability cooldown timer (this remains the same)
    if (is_main_attack_active && !can_cast_shield) {
        shield_attack_timer--;
        if (shield_attack_timer <= 0) {
            can_cast_shield = true;
        }
    }
    
    // NEW: Music duration timer
    // This timer runs down independently during the main attack's active window.
    if (is_main_attack_active && music_timer > 0) {
        music_timer--;
    }
}

function blueberrinni_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        attack_timer = attack_cooldown;
        audio_play_sound(sfxBlueberrinniAttack, 1, false);
		
		var _radius = 96;
		with(oEnemy)
		{
			if(distance_to_object(other) <= _radius)
			{
				if(variable_instance_exists(id, "move"))
				{
					move *= -1;
				}
				if(variable_instance_exists(id, "hspd"))
				{
					hspd *= -1;
				}
			}
		}
		instance_create_layer(x, y, "Instances", oBlueberrinniExplosionFlash)
        var _proj_speed = 6.5;
        var _base_dir = (attack_direction == 1) ? 0 : 180;

        // --- Create 3 Projectiles (New Method) ---
        // We now pass variables inside a struct {} right when we create the instance.

        // Projectile 1: Straight
        instance_create_layer(x, y, "Instances", oBlueberrinniAttack, {
            speed: _proj_speed,
            direction: _base_dir
        });

        // Projectile 2: Upwards
        instance_create_layer(x, y, "Instances", oBlueberrinniAttack, {
            speed: _proj_speed,
            direction: _base_dir - 45 * attack_direction
        });

        // Projectile 3: Downwards
        instance_create_layer(x, y, "Instances", oBlueberrinniAttack, {
            speed: _proj_speed,
            direction: _base_dir + 45 * attack_direction
        });
    }

    attack_counter();
}

function bananita_attack(){
    if (can_attack && key_attack) {
        can_attack = false;
        audio_play_sound(sfxBananitaAttack, 1, false)
        attack_timer = attack_cooldown; 
        
        var _attack_offset = 32;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 24;
        
        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oBananitaAttack);    
        _attack_instance.attack_dir = attack_direction;
		_attack_instance.horizontal_speed = 7.5 * attack_direction;
		_attack_instance.direction = attack_direction;
		_attack_instance.image_xscale = (attack_direction == 1) ? -1 : 1;
    }
    
    attack_counter();
}

function espressona_attack() {
    // Find if there's an existing attack projectile in the room
    var _attack_instance = instance_find(oEspressonaAttack1, 0);

    // This logic handles both firing a new shot and activating the existing one
    if (key_attack) {
        // CASE 1: An attack already exists and is going up. Activate it.
        if (instance_exists(_attack_instance) && _attack_instance.is_going_up) {
            // Tell the projectile to change to its second phase
            _attack_instance.is_going_up = false;
            
            // Allow the player to shoot again immediately after activating the shot
            can_attack = true; 
            attack_timer = 0;
        }
        // CASE 2: No attack exists, and we are ready to fire a new one.
        else if (can_attack && !instance_exists(_attack_instance)) {
            can_attack = false;
            attack_timer = attack_cooldown;
            // You'll need to create this sound effect
            audio_play_sound(sfxEspressonaAttack1, 1, false);

            var _attack_x = x;
            var _attack_y = y - 8; // Spawn slightly above the player's head

            var _new_attack = instance_create_layer(_attack_x, _attack_y, "Instances", oEspressonaAttack1);
            
            // Pass the player's facing direction to the projectile
            _new_attack.initial_direction = attack_direction;
        }
    }

    // This handles the cooldown timer for the *initial* shot
    attack_counter();
}

function footera_attack() {
    // This state machine manages the attack's different phases.
    switch (attack_state) {
        
        // --- STATE: NORMAL ---
        case FOOTERA_STATE.NORMAL:
            // Check to START the attack. Must be on the ground.
            if (can_attack && key_attack) {
				audio_play_sound(sfxFooteraAttack1, 1, false);
                can_attack = false;
                attack_timer = attack_cooldown;
                
                // Change state and begin the super jump
                attack_state = FOOTERA_STATE.ATTACK_JUMP;
                vert_speed = -18; // A powerful initial jump speed
                is_invulnerable = true;
            }
            // The regular attack cooldown only runs in the normal state
            attack_counter();
            break;

        // --- STATE: ATTACK_JUMP ---
        case FOOTERA_STATE.ATTACK_JUMP:
            // Kill enemies on contact.
            var _enemy = instance_place(x, y, oEnemy);
            if (_enemy != noone) {
                with (_enemy) { instance_destroy(); }
            }
            
            // Check for conditions to end the jump.
            var _hit_obstacle = place_meeting(x + horz_speed, y, oObstacle) || place_meeting(x, y + vert_speed, oObstacle);
            if (key_attack || _hit_obstacle) {
                attack_state = FOOTERA_STATE.ATTACK_FALL;
            }
            break;

        // --- STATE: ATTACK_FALL ---
        case FOOTERA_STATE.ATTACK_FALL:
            // Override normal gravity with a fast, constant downward speed.
            vert_speed = 15; 
            is_invulnerable = true; // Remain invulnerable during the fall

            // Check for landing on the ground.
            if (place_meeting(x, y + 1, oObstacle)) {
                // --- THE LANDING ATTACK ---
                audio_play_sound(sfxFooteraAttack2, 1, false);
                
                var _proj_y = y + 48; // Spawn projectiles from the player's center
                
                // Create the left projectile
                instance_create_layer(x, _proj_y, "Instances", oFooteraAttack);
                
                // Create the right projectile and set its speed
                var _proj_right = instance_create_layer(x, _proj_y, "Instances", oFooteraAttack);
                _proj_right.hspeed *= -1; // Reverse horizontal speed
                _proj_right.image_xscale *= -1; // Flip sprite
                
                // --- RESET STATE & START INVULNERABILITY TIMER ---
                attack_state = FOOTERA_STATE.NORMAL;
                
                // THIS IS THE CHANGED LINE:
                // Instead of is_invulnerable = false, we start the timer.
                invulnerability_timer = game_get_speed(gamespeed_fps) / 4; // 1/4 of a second
                
                vert_speed = 0; // Stop all vertical movement
            }
            break;
    }
}

function orangutini_attack() {
    if (can_attack && key_attack) {
        can_attack = false;
        attack_timer = attack_cooldown;
        // Make sure to create this sound effect
        audio_play_sound(sfxOrangutiniAttack, 1, false);

        // Adjust spawn position to fit Orangutini's sprite
        var _attack_offset = 26;
        var _attack_x = x + (_attack_offset * attack_direction);
        var _attack_y = y + 32;

        var _attack_instance = instance_create_layer(_attack_x, _attack_y, "Instances", oOrangutiniAttack);
        
        // Tell the projectile which way to go
        _attack_instance.direction_facing = attack_direction;
    }

    attack_counter();
}

function chicletera_attack() {
    // Part 1: Logic that runs WHILE the speed boost is active
    if (speed_boost_timer > 0) {
        speed_boost_timer -= 1;
        projectile_spawn_timer -= 1;

        // Spawn a projectile behind the player at regular intervals
        if (projectile_spawn_timer <= 0) {
            projectile_spawn_timer = projectile_spawn_rate; // Reset timer

            var _spawn_x = x - (32 * attack_direction); 
            var _spawn_y = y + 32; 
            instance_create_layer(_spawn_x, _spawn_y, "Instances", oChicleteraAttack);
        }
        
        // When the timer runs out, restore the player's normal speed
        if (speed_boost_timer <= 0) {
            // Restore original speed using your variable
            speed_ = original_speed_; 
        }
    }
    // Part 2: Logic to START the attack (only if not already boosting)
    else if (can_attack && key_attack) {
        can_attack = false;
        attack_timer = attack_cooldown;
        audio_play_sound(sfxChicleteraAttack, 1, false);

        // Activate the speed boost timer
        speed_boost_timer = speed_boost_duration;

        // Store and double the player's speed using your variable
        original_speed_ = speed_;
        speed_ *= 3/2; // Double the player's speed
    }

    // The attack cooldown runs independently
    attack_counter();
}