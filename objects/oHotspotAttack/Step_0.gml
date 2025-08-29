// In oHotspotAttack - STEP EVENT (With Self-Rescue)

// --- 0. SELF-RESCUE LOGIC ---
// Before we do anything, check if we've spawned inside a wall.
if (place_meeting(x, y, oObstacle)) {
	// We are stuck. We need to escape.
	// We'll push ourselves horizontally out of the wall.
	var _pushed_out = false;
	// Try pushing left
	for (var i = 0; i < 32; i++) {
		if (!place_meeting(x - i, y, oObstacle)) {
			x -= i;
			_pushed_out = true;
			break;
		}
	}
	// If that didn't work, try pushing right
	if (!_pushed_out) {
		for (var i = 0; i < 32; i++) {
			if (!place_meeting(x + i, y, oObstacle)) {
				x += i;
				break;
			}
		}
	}
}


// 1. Apply Gravity (Runs after potential rescue)
speed_v += gravity_effect;


// --- PIXEL-PERFECT MOVEMENT LOGIC (Unchanged) ---
// The rest of the code is the same as before.

// 2. Handle smooth, fractional movement
x_remainder += speed_h;
y_remainder += speed_v;

var _move_x = round(x_remainder);
var _move_y = round(y_remainder);

x_remainder -= _move_x;
y_remainder -= _move_y;


// 3. Horizontal Movement (One pixel at a time)
if (_move_x != 0) {
	var _dir = sign(_move_x);
	repeat(abs(_move_x)) {
		if (place_meeting(x + _dir, y, oObstacle) || place_meeting(x + _dir, y, oEnemy)) {
			speed_h *= -1 * bounce_dampen;
			break;
		}
		x += _dir;
	}
}


// 4. Vertical Movement (One pixel at a time)
if (_move_y != 0) {
	var _dir = sign(_move_y);
	repeat(abs(_move_y)) {
		if (place_meeting(x, y + _dir, oObstacle) || place_meeting(x, y + _dir, oEnemy)) {
			speed_v *= -1 * bounce_dampen;
			break;
		}
		y += _dir;
	}
}