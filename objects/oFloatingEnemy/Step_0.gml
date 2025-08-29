floatingMovement();

if (is_poisoned) {
    poison_timer -= 1;
	if (poison_timer <= 0) {
		instance_destroy();
	}
}