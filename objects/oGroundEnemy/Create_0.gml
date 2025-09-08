// Inherit all the variables and methods from oEnemy
event_inherited();

// --- Ground-specific Properties ---
speed_ = is_enraged ? 8 : 4;
OG_SPEED = speed_;
grav = is_enraged ? 0.75 :  0.5;
move = choose(-1, 1);
vspd = 0; // <-- ADD THIS LINE

// --- Override Parent Methods ---

/// @override
function stop_movement() {
    speed_ = 0;
}

/// @override
function restore_movement() {
    speed_ = OG_SPEED;
}

/// @override
function handle_movement() {
    // This now ONLY handles horizontal movement
    enMovement();
}

/// @override
function apply_physics() {
    // This now ONLY handles gravity
    enApplyGravity();
}