function enMovement(){
	horz_speed = move * speed_;
	
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

function floatingMovement() {
    if (place_meeting(x + hspd, y, oObstacle)) {
        while (!place_meeting(x + sign(hspd), y, oObstacle)) {
            x += sign(hspd);
        }
        hspd = -hspd + irandom_range(-1, 1);
        hspd = clamp(hspd, -4, 4);
        if (hspd == 0) hspd = choose(-1, 1);
    }

    if (place_meeting(x, y + vspd, oObstacle)) {
        while (!place_meeting(x, y + sign(vspd), oObstacle)) {
            y += sign(vspd);
        }
        vspd = -vspd + irandom_range(-1, 1);
        vspd = clamp(vspd, -4, 4);
        if (vspd == 0) vspd = choose(-1, 1);
    }

    x += hspd;
    y += vspd;

    image_xscale = (hspd < 0) ? -1 : 1;
}



function start_falling() {
    // We only want to start falling if we are currently floating
    if (state == ENEMY_STATE.FLOATING) {
        state = ENEMY_STATE.FALLING;
        
        // Reset speeds for a clean fall
        vspd = 0;
        hspd = 0;
    }
}

function get_stunned(duration) {
    is_stunned = true;
    stun_timer = duration;
}

/// @function enApplyGravity()
/// @description Applies gravity and handles vertical collision for ground-based objects.
function enApplyGravity() {
    // Apply gravity force
    vspd += grav;

    // Check for collision with the ground
    if (place_meeting(x, y + vspd, oObstacle)) {
        // Move pixel by pixel until just before the obstacle
        while (!place_meeting(x, y + 1, oObstacle)) {
            y += 1;
        }
        vspd = 0; // Stop vertical movement
    }
    y += vspd;
}