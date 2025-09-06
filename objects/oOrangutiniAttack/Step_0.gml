// --- 1. Countdown Lifetime ---
lifetime -= 1;
if (lifetime <= 0) {
    instance_destroy();
    exit; // Stop running code for this frame
}


// --- 2. Update Spin Angle ---
spin_angle += spin_speed;
if (spin_angle >= 360) {
    spin_angle -= 360;
}


// --- 3. Calculate New Position ---
// This part must happen BEFORE we calculate the new rotation.
x += forward_speed * direction_facing;
y = start_y + (dsin(spin_angle) * spin_radius);


// --- 4. Update Rotation ---
// This new line makes the sprite always face the direction it's traveling.
image_angle = point_direction(xprevious, yprevious, x, y);