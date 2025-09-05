// --- Horizontal Collision & Movement ---
if (place_meeting(x + hspd, y, oObstacle)) {
    // Move flush to the wall to prevent getting stuck
    while (!place_meeting(x + sign(hspd), y, oObstacle)) {
        x += sign(hspd);
    }
    
    // Reverse horizontal speed for the bounce
    hspd *= -1;
    
    // Use up one bounce
    bounces_left--;
}

// Apply horizontal movement.
// If a bounce happened, hspd is now inverted and the projectile will move away from the wall.
// If not, it moves normally.
x += hspd;


// --- Vertical Collision & Movement ---
// This check now happens at the projectile's new x-position.
if (place_meeting(x, y + vspd, oObstacle)) {
    // Move flush to the wall
    while (!place_meeting(x, y + sign(vspd), oObstacle)) {
        y += sign(vspd);
    }
    
    // Reverse vertical speed
    vspd *= -1;
    
    // Use up one bounce
    // Note: A corner hit will use two bounces, which is physically correct.
    // If you want a corner hit to only use one bounce total, we can adjust this.
    bounces_left--;
}

// Apply vertical movement
y += vspd;


// --- Destruction ---
// If we've run out of bounces, destroy the projectile
if (bounces_left < 0) {
    instance_destroy();
}