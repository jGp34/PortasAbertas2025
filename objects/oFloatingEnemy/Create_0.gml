// Floating Enemy - Create Event

// State machine setup
enum ENEMY_STATE {
    FLOATING,
    FALLING,
    STUCK
}
state = ENEMY_STATE.FLOATING;

// Movement variables
speed_ = 3;
hspd = choose(-1, 1) * speed_;
vspd = choose(-1, 1) * speed_;
gravity_ = 0.5; // You can adjust this value to change how fast it falls

// Existing variables
depth = -10;
is_poisoned = false;
poison_timer = 0;
is_frozen = false;
projectiles_hit_by = [];