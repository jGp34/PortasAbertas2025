if (is_going_up) {
    // --- PHASE 1: MOVING UP ---
    // Manually move the projectile upwards
    y += vertical_speed;
} else {
    // --- PHASE 2: MOVING DOWN ---
    // This block runs only ONCE, the frame after the player presses the key again.
    // The "speed == 0" check prevents it from running repeatedly.
    if (speed == 0) {
        // Set the diagonal movement using GameMaker's built-in speed/direction
        speed = diagonal_speed;
        
        // UPDATED: 330 is down-right (more horizontal), 210 is down-left (more horizontal)
        direction = (initial_direction == 1) ? 330 : 210;
        
        // Point the sprite in the new direction of movement
        // Your change here is correct if your sprite is drawn facing UP by default.
        image_angle = direction - 90;
    }
}