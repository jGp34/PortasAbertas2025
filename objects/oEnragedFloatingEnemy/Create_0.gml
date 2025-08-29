speed_ = 6
OG_SPEED = speed_;
hspd = choose(-1, 1) * speed_;
vspd = choose(-1, 1) * speed_;
depth = -10;
image_blend = c_red;

is_poisoned = false;
poison_timer = 0;
is_frozen = false;
projectiles_hit_by = [];
is_stunned = false;
stun_timer = 0;

state = ENEMY_STATE.FLOATING;

function get_stunned(duration) {
    is_stunned = true;
    stun_timer = duration;
    speed_ = 0;
}