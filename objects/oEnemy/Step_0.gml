// --- Main Logic Loop ---

// 1. Handle Movement
// Only move if not stunned, dancing, or frozen.
if (!is_stunned && !is_dancing && !is_frozen) {
    handle_movement(); // This calls the specific child's movement logic
}

apply_physics();
// 2. Handle Status Effects Timers

// Poison effect
if (is_poisoned) {
    poison_timer -= 1;
    if (poison_timer <= 0) {
        instance_destroy();
        return; // Exit script to prevent errors after being destroyed
    }
}

// Stun effect
if (is_stunned) {
    stun_timer -= 1;
    if (stun_timer <= 0) {
        is_stunned = false;
        // Only restore movement if no other effect is active
        if (!is_dancing && !is_frozen) {
            restore_movement();
        }
    }
}

// Dance effect
if (is_dancing) {
    dance_timer--;
    if (dance_timer <= 0) {
        is_dancing = false;
        // Only restore movement if no other effect is active
        if (!is_stunned && !is_frozen) {
            restore_movement();
        }
    } else {
        // Handle the flipping while dancing
        dance_flip_timer--;
        if (dance_flip_timer <= 0) {
            image_xscale *= -1;
            dance_flip_timer = dance_flip_interval;
        }
    }
}