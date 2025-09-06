is_going_up = true;      // State variable: true for up, false for diagonal down
initial_direction = 1;   // Set by player, 1 for right, -1 for left

vertical_speed = -6;     // How fast it moves up (pixels per step)
diagonal_speed = 12;      // How fast it moves diagonally down (pixels per step)

image_angle = 0;        // Start by pointing the sprite straight up

depth = 15;