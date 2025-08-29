speed_ = 4;
OG_SPEED = speed_;
horz_speed = 0;
vert_speed = 0;
grav = 0.85;
move = choose(-1, 1);
depth = -10;
image_blend = c_red;

is_poisoned = false;
poison_timer = 0;
is_frozen = false;
projectiles_hit_by = [];
is_stunned = false;
stun_timer = 0;

function get_stunned(duration) {
    is_stunned = true;
    stun_timer = duration;
    speed_ = 0;
}