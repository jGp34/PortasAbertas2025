// Inherit all the status effect logic from oEnemy
event_inherited();

// --- State Machine ---
enum ENEMY_STATE {
    FLOATING,
    FALLING,
    STUCK
}
state = ENEMY_STATE.FLOATING;

// --- Floating-specific Properties ---
speed_ = 3;
OG_SPEED = speed_;
gravity_ = 0.5;

// Initialize movement
hspd = choose(-1, 1) * speed_;
vspd = choose(-1, 1) * speed_;

// --- Override Parent Methods ---

/// @override
function stop_movement() {
    hspd = 0;
    vspd = 0;
    if (state == ENEMY_STATE.FLOATING) {
        state = ENEMY_STATE.FALLING;
    }
}

/// @override
function restore_movement() {
    speed_ = OG_SPEED;
    hspd = choose(-1, 1) * speed_;
    vspd = choose(-1, 1) * speed_;
    state = ENEMY_STATE.FLOATING; // Go back to floating
}

/// @override
function handle_movement() {
    // This function now ONLY handles the active floating behavior.
    if (state == ENEMY_STATE.FLOATING) {
        floatingMovement();
    }
}

/// @override
function apply_physics() {
    // This function handles the physics of falling and being on the ground.
    switch (state) {
        case ENEMY_STATE.FALLING:
            vspd += gravity_;
            if (place_meeting(x, y + vspd, oObstacle)) {
                while (!place_meeting(x, y + 1, oObstacle)) {
                    y += 1;
                }
                vspd = 0;
                state = ENEMY_STATE.STUCK;
            }
            y += vspd;
            break;

        case ENEMY_STATE.STUCK:
            // Does nothing while stuck on the ground
            break;
    }
}

/// @override
function apply_freeze_effect() {
    is_frozen = true;
    image_blend = c_aqua;
    stop_movement();

    if (state == ENEMY_STATE.FLOATING) {
        state = ENEMY_STATE.FALLING;
    }
}

/// @override
function apply_slow(multiplier) {
    // First, apply the base slow to speed_ and OG_SPEED
    speed_ *= multiplier;
    OG_SPEED *= multiplier;
    
    // NOW, apply the same slow to the actual movement variables
    hspd *= multiplier;
    vspd *= multiplier;
}