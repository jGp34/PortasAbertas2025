// --- Acceleration ---
// Increase the current speed by the acceleration amount, but cap it at the max_speed.
horizontal_speed = min(horizontal_speed + acceleration, max_speed);


// --- Movement ---
// Move the projectile horizontally based on its current speed and direction.
x += horizontal_speed * direction_multiplier;