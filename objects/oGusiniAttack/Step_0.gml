if (instance_exists(target)) {
    var base_dir = point_direction(x, y, target.x, target.y);
    var best_dir = base_dir;
    var best_score = 100000;

    for (var angle_offset = -45; angle_offset <= 45; angle_offset += 15) {
        var test_dir = base_dir + angle_offset;
        var test_x = x + lengthdir_x(16, test_dir);
        var test_y = y + lengthdir_y(16, test_dir);

        if (!position_meeting(test_x, test_y, oObstacle)) {
            var score_ = abs(angle_offset);
            if (score_ < best_score) {
                best_score = score_;
                best_dir = test_dir;
            }
        }
    }

    horizontal_speed = lengthdir_x(7, best_dir);
    vertical_speed   = lengthdir_y(7, best_dir);
}

x += horizontal_speed;
y += vertical_speed;

image_angle = point_direction(0, 0, horizontal_speed, vertical_speed) + 180;
