// In oTobAttack - STEP EVENT

// We only need two simple states now
switch (state) {
    case "falling":
        v_speed += 0.7;
        if (place_meeting(x, y + v_speed, oObstacle)) {
            while(!place_meeting(x, y + 1, oObstacle)) { y += 1; }
            v_speed = 0;
            // Set the starting direction correctly.
            // attack_direction > 0 means right (0 degrees), otherwise left (180 degrees).
            direction = (attack_direction > 0) ? 0 : 180;
            
            state = "crawling"; // Switch to the new unified movement state
        } else {
            y += v_speed;
        }
        break;

    case "crawling":
        // This unified logic handles ALL movement: floors, walls, and ceilings.
        
        // --- 1. Define relative coordinates ---
		//show_debug_message("Crawling with direction: " + string(direction));
        var _spr_half = sprite_width / 2;
		var _ground_check_angle = direction - (90 * attack_direction);
        // The point just to our "relative right"
        var _x_right = x + lengthdir_x(_spr_half, _ground_check_angle);
        var _y_right = y + lengthdir_y(_spr_half, _ground_check_angle);
        // The point directly "ahead" of us
        var _x_ahead = x + lengthdir_x(move_speed, direction);
        var _y_ahead = y + lengthdir_y(move_speed, direction);
        
        // --- 2. Check for Ledges (Outer Corners) ---
        // Is the space to our relative right empty?
        if (!place_meeting(_x_right, _y_right, oObstacle)) {
            // Yes, it's a ledge. Turn 90 degrees to the right to wrap around it.
			show_debug_message("Ledge");
            direction -= 90 * attack_direction;
            
        // --- 3. Check for Walls (Inner Corners) ---
        // If there's ground to our right, is there a wall directly ahead?
        } else if (place_meeting(_x_ahead, _y_ahead, oObstacle)) {
            // Yes, it's a wall. Turn 90 degrees to the left to climb it.
			show_debug_message("Wall");
            direction += 90 * attack_direction;
        }
        
        // --- 4. Move Straight ---
        // If there were no corners, the direction is unchanged. Move forward.
        // If we did turn, we move forward in the NEW direction.
        x += lengthdir_x(move_speed, direction);
        y += lengthdir_y(move_speed, direction);
        
        // Keep the direction angle clean (0-359)
        if (direction >= 360) direction -= 360;
        if (direction < 0) direction += 360;
        
        break;
}