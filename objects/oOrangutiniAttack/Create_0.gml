// --- Appearance ---
image_alpha = 0.5;
image_blend = c_gray;

// --- Lifetime ---
// The attack will last for 250 frames (just over 4 seconds at 60 FPS).
lifetime = 350;

// --- Movement ---
forward_speed = 3.5;
direction_facing = 1; // Set by the player upon creation

// --- Circular Motion Properties ---
spin_radius = 40;     // Made the spin circle wider (was 28)
spin_speed = 18;
spin_angle = 0;
start_y = y;
depth = -40