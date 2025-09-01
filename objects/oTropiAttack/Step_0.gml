// In oTropiAttack - STEP EVENT (Corrected)

// --- 0. SELF-RESCUE LOGIC ---
// If we spawn inside a wall, this code will forcibly push us out.
if (place_meeting(x, y, oObstacle)) {
    var _pushed_out = false;
    for (var i = 0; i < 32; i++) { if (!place_meeting(x - i, y, oObstacle)) { x -= i; _pushed_out = true; break; } }
    if (!_pushed_out) { for (var i = 0; i < 32; i++) { if (!place_meeting(x + i, y, oObstacle)) { x += i; break; } } }
}

// 1. Apply Gravity
speed_v += gravity_effect;
speed_v = clamp(speed_v, -max_speed_v, max_speed_v);


// --- PIXEL-PERFECT MOVEMENT LOGIC ---
x_remainder += speed_h;
y_remainder += speed_v;
var _move_x = round(x_remainder);
var _move_y = round(y_remainder);
x_remainder -= _move_x;
y_remainder -= _move_y;

// 3. Horizontal Movement
if (_move_x != 0) {
    var _dir = sign(_move_x);
    repeat(abs(_move_x)) {
        // CORRECTED: Removed the check for oEnemy
        if (place_meeting(x + _dir, y, oObstacle)) {
            speed_h *= -1 * bounce_dampen;
            break;
        }
        x += _dir;
    }
}

// 4. Vertical Movement
if (_move_y != 0) {
    var _dir = sign(_move_y);
    repeat(abs(_move_y)) {
        // CORRECTED: Removed the check for oEnemy
        if (place_meeting(x, y + _dir, oObstacle)) {
            speed_v *= -1 * bounce_dampen;
            break;
        }
        y += _dir;
    }
}

// 5. Your original visual flair, which is great!
image_angle += speed_h;