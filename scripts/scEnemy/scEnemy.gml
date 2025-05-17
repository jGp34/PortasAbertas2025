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

function floatingMovement() {
    // Horizontal collision
    if (place_meeting(x + hspd, y, oObstacle)) {
        while (!place_meeting(x + sign(hspd), y, oObstacle)) {
            x += sign(hspd);
        }
        // Reverse and randomize a bit
        hspd = -hspd + irandom_range(-1, 1);
        hspd = clamp(hspd, -4, 4);
        if (hspd == 0) hspd = choose(-1, 1);
    }

    // Vertical collision
    if (place_meeting(x, y + vspd, oObstacle)) {
        while (!place_meeting(x, y + sign(vspd), oObstacle)) {
            y += sign(vspd);
        }
        // Reverse and randomize a bit
        vspd = -vspd + irandom_range(-1, 1);
        vspd = clamp(vspd, -4, 4);
        if (vspd == 0) vspd = choose(-1, 1);
    }

    // Apply movement
    x += hspd;
    y += vspd;

    // Flip sprite based on horizontal direction
    image_xscale = (hspd < 0) ? -1 : 1;
}
