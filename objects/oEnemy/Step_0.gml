enMovement();
applyGravity();


if (is_poisoned) {
    poison_timer -= 1;
	if (poison_timer <= 0) {
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