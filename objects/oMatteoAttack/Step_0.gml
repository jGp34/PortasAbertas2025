// oMatteoAttack - Step Event

if (is_retracting) {
    // --- RETRACTING MODE (Unchanged) ---
    var _retract_speed = 12;
    move_towards_point(owner.x, owner.y, _retract_speed);
        
    if (point_distance(x, y, owner.x, owner.y) < _retract_speed) {
        owner.spike_ball_instance = noone;
        instance_destroy();
    }
    
} else {
    // --- PHYSICS MODE ---
    
    // --- SELF-RESCUE LOGIC (MOVED HERE) ---
    // First, check if we are currently stuck inside an obstacle.
    if (place_meeting(x, y, oObstacle) || place_meeting(x, y, oSpike)) {
        // If we are stuck, push the ball down 1 pixel at a time until it's free.
        while (place_meeting(x, y, oObstacle) || place_meeting(x, y, oSpike)) {
            y++;
        }
        // If the ball was moving up, make it bounce down immediately.
        if (vspd < 0) {
            vspd *= -0.4;
        }
    }
    
    // --- Physics and Collision (Unchanged) ---
    vspd += grav;
    
    // Horizontal Collision
    if (place_meeting(x + hspd, y, oObstacle) || place_meeting(x + hspd, y, oSpike)) {
        while(!place_meeting(x + sign(hspd), y, oObstacle) && !place_meeting(x + sign(hspd), y, oSpike)) {
            x += sign(hspd);
        }
        hspd = -hspd * 0.4;
    }
    x += hspd;

    // Vertical Collision
    if (place_meeting(x, y + vspd, oObstacle) || place_meeting(x, y + vspd, oSpike)) {
        while(!place_meeting(x, y + sign(vspd), oObstacle) && !place_meeting(x, y + sign(vspd), oSpike)) {
            y += sign(vspd);
        }
        vspd = -vspd * 0.4;
    }
    y += vspd;
}