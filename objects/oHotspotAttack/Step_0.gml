// In oHotspotAttack - STEP EVENT

// --- Self-Rescue from Obstacles (Unchanged) ---
if (place_meeting(x, y, oObstacle)) {
	var _pushed_out = false;
	for (var i = 0; i < 32; i++) {
		if (!place_meeting(x - i, y, oObstacle)) {
			x -= i;
			_pushed_out = true;
			break;
		}
	}

	if (!_pushed_out) {
		for (var i = 0; i < 32; i++) {
			if (!place_meeting(x + i, y, oObstacle)) {
				x += i;
				break;
			}
		}
	}
}

// --- Physics (Unchanged) ---
speed_v += gravity_effect;

// --- Fractional Movement (Unchanged) ---
x_remainder += speed_h;
y_remainder += speed_v;
var _move_x = round(x_remainder);
var _move_y = round(y_remainder);
x_remainder -= _move_x;
y_remainder -= _move_y;

// --- Horizontal Movement (Collision check updated) ---
if (_move_x != 0) {
	var _dir = sign(_move_x);
	repeat(abs(_move_x)) {
		// Now only checks for oObstacle
		if (place_meeting(x + _dir, y, oObstacle)) {
			speed_h *= -1 * bounce_dampen;
			x_remainder = 0;
			_move_y = 0;
			break;
		}
		x += _dir;
	}
}

// --- Vertical Movement (Collision check updated) ---
if (_move_y != 0) {
	var _dir = sign(_move_y);
	repeat(abs(_move_y)) {
		// Now only checks for oObstacle
		if (place_meeting(x, y + _dir, oObstacle)) {
			speed_v *= -1 * bounce_dampen;
			y_remainder = 0;
			break;
		}
		y += _dir;
	}
}