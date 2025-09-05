// --- Movement Properties ---
depth = 15;
// The starting speed of the projectile.
initial_speed = 1;

// The amount of speed gained each step.
acceleration = 0.15;

// The maximum speed the projectile can reach.
max_speed = 16;

// The current horizontal speed. We initialize it with the starting speed.
horizontal_speed = initial_speed;

// The direction of movement (-1 for left, 1 for right).
// This is set by the player when the projectile is created.
direction_multiplier = 1;