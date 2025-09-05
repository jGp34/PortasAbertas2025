// --- Core Properties (Shared by ALL enemies) ---
OG_SPEED = 4; // Default original speed
speed_ = OG_SPEED;
depth = -10;

// --- Status Effects ---
is_poisoned = false;
poison_timer = 0;
is_frozen = false;
is_stunned = false;
stun_timer = 0;
is_dancing = false;
dance_timer = 0;
dance_flip_timer = 0;
dance_flip_interval = 0.5 * game_get_speed(gamespeed_fps);
projectiles_hit_by = [];
is_charmed = false;
// --- Core Methods (to be overridden by children) ---

function handle_movement() {
    // Intentionally empty. Children will implement their movement logic.
}

function stop_movement() {
    // Intentionally empty. Children will implement how they stop.
}

function restore_movement() {
    // Intentionally empty. Children will implement how they resume movement.
}

// --- Status Effect Functions ---

function get_stunned(duration) {
    is_stunned = true;
    stun_timer = duration;
    stop_movement(); // Use the overrideable method
}

function start_dancing(duration) {
    is_stunned = false; // Dance takes priority
    is_dancing = true;
    dance_timer = duration;
    dance_flip_timer = dance_flip_interval;
    stop_movement(); // Use the overrideable method
}

// Add this to your oEnemy Create Event

function apply_freeze_effect() {
    is_frozen = true;
    image_blend = c_aqua;
    stop_movement(); // Use the existing stop_movement() method!
}

function apply_slow(multiplier) {
    // Reduces the current and original speeds by the multiplier
    speed_ *= multiplier;
    OG_SPEED *= multiplier;
}

function apply_physics() {
    // Intentionally empty. Children will handle their own physics.
}