inputCheck();
movement();
applyGravity();
ManualTransform();
ChangeMode();

// --- Nudge player out of walls if stuck ---
if (place_meeting(x, y, oObstacle)) {
    var max_check = 32;

    var best_dist = max_check + 1;
    var best_x = x;
    var best_y = y;

    // check all offsets in a radius
    for (var dx = -max_check; dx <= max_check; dx++) {
        for (var dy = -max_check; dy <= max_check; dy++) {
            if (!place_meeting(x + dx, y + dy, oObstacle)) {
                var dist = abs(dx) + abs(dy); // Manhattan distance
                if (dist < best_dist) {
                    best_dist = dist;
                    best_x = x + dx;
                    best_y = y + dy;
                }
            }
        }
    }

    // move player to best free spot
    x = best_x;
    y = best_y;
}


