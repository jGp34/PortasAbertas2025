inputCheck();
movement();
applyGravity();
ManualTransform();
ChangeMode();

// --- Nudge player out of walls if stuck ---
if (place_meeting(x, y, oObstacle)) {
    var max_check = 32;

    // track best offset
    var best_dist = max_check + 1;
    var best_x = x;
    var best_y = y;

    // search horizontally
    for (var i = 1; i <= max_check; i++) {
        if (!place_meeting(x - i, y, oObstacle)) {
            best_dist = i;
            best_x = x - i;
            best_y = y;
            break;
        }
        if (!place_meeting(x + i, y, oObstacle)) {
            best_dist = i;
            best_x = x + i;
            best_y = y;
            break;
        }
    }

    // search vertically
    for (var j = 1; j <= max_check; j++) {
        if (!place_meeting(x, y - j, oObstacle) && j < best_dist) {
            best_dist = j;
            best_x = x;
            best_y = y - j;
            break;
        }
        if (!place_meeting(x, y + j, oObstacle) && j < best_dist) {
            best_dist = j;
            best_x = x;
            best_y = y + j;
            break;
        }
    }

    // move to chosen position
    x = best_x;
    y = best_y;
}


