if (instance_exists(owner)) {
    orbit_angle += orbit_speed; // spin around the character
    x = owner.x + lengthdir_x(orbit_radius, orbit_angle);
    y = owner.y + lengthdir_y(orbit_radius, orbit_angle);
} else {
    instance_destroy(); // remove if Burbaloni dies
}