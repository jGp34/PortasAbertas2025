// 1. Apply Gravity
speed_v += gravity_effect;

// 2. Horizontal Movement & Collision
x += speed_h;
// Check for EITHER an obstacle OR an enemy
if (place_meeting(x, y, oObstacle) || place_meeting(x, y, oEnemy)) {
    x = xprevious;
    speed_h *= -1 * bounce_dampen;
}

// 3. Vertical Movement & Collision
y += speed_v;
// Check for EITHER an obstacle OR an enemy
if (place_meeting(x, y, oObstacle) || place_meeting(x, y, oEnemy)) {
    y = yprevious;
    speed_v *= -1 * bounce_dampen;
}