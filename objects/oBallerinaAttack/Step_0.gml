// --- Vertical movement ---
var y_next = y + vertical_speed;

if (!place_meeting(x, y_next, oObstacle)) {
    y = y_next;
} else {
    if (vertical_speed > 0) {
        while (!place_meeting(x, y + sign(vertical_speed), oObstacle)) {
            y += sign(vertical_speed);
        }
        instance_destroy();
    } else {
        if (!has_bounced) {
            while (!place_meeting(x, y + sign(vertical_speed), oObstacle)) {
                y += sign(vertical_speed);
            }

            vertical_speed = -vertical_speed * 0.5;
            horizontal_speed *= 0.8;
            has_bounced = true;
        } else {
            while (!place_meeting(x, y + sign(vertical_speed), oObstacle)) {
                y += sign(vertical_speed);
            }
            instance_destroy();
        }
    }
}



// --- Horizontal movement ---
x += horizontal_speed;
if (place_meeting(x, y, oObstacle)) {
    if (!has_bounced) {
        while (place_meeting(x, y, oObstacle)) {
            x -= sign(horizontal_speed);
        }
        horizontal_speed = -horizontal_speed * 0.5;
        vertical_speed *= 0.8;
        has_bounced = true;
    } else {
        instance_destroy();
    }
}

// Apply gravity
vertical_speed += gravity;
