// Floating Enemy - Step Event

// The state machine handles all movement
switch (state) {
    // --- STATE 1: Default floating behavior ---
    case ENEMY_STATE.FLOATING:
        floatingMovement();
        break;

    // --- STATE 2: Falling down with gravity ---
    case ENEMY_STATE.FALLING:
        // Apply gravity
        vspd += gravity_;
        
        // Check for collision with the ground (or any obstacle)
        if (place_meeting(x, y + vspd, oObstacle)) {
            // Move pixel by pixel until we are just touching the obstacle
            while (!place_meeting(x, y + 1, oObstacle)) {
                y += 1;
            }
            
            // We've hit the ground, so get stuck
            vspd = 0;
            state = ENEMY_STATE.STUCK;
            
            // Optional: You could play a "thud" sound here
            // audio_play_sound(sfxThud, 1, false);
        }
        
        // Update position
        y += vspd;
        break;
        
    // --- STATE 3: Stuck on the ground, does nothing ---
    case ENEMY_STATE.STUCK:
        // The enemy is now stuck. It will not move.
        // You could change its sprite or start an animation here if you want.
        break;
}


// Your poison logic can run independently of the state
if (is_poisoned) {
    poison_timer -= 1;
    if (poison_timer <= 0) {
        // You might want to turn the enemy green before it dies
        // image_blend = c_lime;
        instance_destroy();
    }
}

if (is_stunned) {
    stun_timer -= 1;
    if (stun_timer <= 0) {
        is_stunned = false;
        speed_ = OG_SPEED;
    }
}