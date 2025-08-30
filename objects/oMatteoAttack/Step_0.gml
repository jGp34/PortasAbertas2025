// oMatteoAttack - Step Event

if (is_retracting) {
    // --- RETRACTING MODE ---
    var _retract_speed = 12;
    move_towards_point(owner.x, owner.y, _retract_speed);
        
    if (point_distance(x, y, owner.x, owner.y) < _retract_speed) {
        owner.spike_ball_instance = noone;
        instance_destroy();
	}
    
} else {
    // --- PHYSICS MODE ---
    vspd += grav;
    
    // Horizontal Collision: Check for oObstacle OR oSpike
    if (place_meeting(x + hspd, y, oObstacle) || place_meeting(x + hspd, y, oSpike)) {
        // Nudge until we are clear of BOTH oObstacle AND oSpike
        while(!place_meeting(x + sign(hspd), y, oObstacle) && !place_meeting(x + sign(hspd), y, oSpike)) {
            x += sign(hspd);
        }
        hspd = -hspd * 0.4;
    }
    x += hspd;

    // Vertical Collision: Check for oObstacle OR oSpike
    if (place_meeting(x, y + vspd, oObstacle) || place_meeting(x, y + vspd, oSpike)) {
        // Nudge until we are clear of BOTH oObstacle AND oSpike
        while(!place_meeting(x, y + sign(vspd), oObstacle) && !place_meeting(x, y + sign(vspd), oSpike)) {
            y += sign(vspd);
        }
        vspd = -vspd * 0.4;
    }
    y += vspd;
}