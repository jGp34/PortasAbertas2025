// --- NEW & MODIFIED ---

// 1. Apply gravity
vertical_speed += gravity_effect;

// 2. Apply movement
x += horizontal_speed;
y += vertical_speed;

// 3. Apply spin
// We use sign(horizontal_speed) so it spins in the direction it's traveling
image_angle += spin_speed * sign(horizontal_speed);