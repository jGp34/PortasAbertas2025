if (instance_exists(owner)) {
	x = owner.x + (offset * sign(owner.dash_speed));
	y = owner.y + 20;
	image_xscale = -sign(owner.dash_speed);
} else {
	instance_destroy();
}

lifetime--;
if (lifetime <= 0) {
	instance_destroy();
}