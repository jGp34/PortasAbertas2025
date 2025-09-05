// Create Event for oBlueberrinniAttack

// Use speed and direction to calculate initial movement
hspd = lengthdir_x(speed, direction);
vspd = lengthdir_y(speed, direction);

// Set built-in speed to 0 to prevent automatic movement
speed = 0;

// Bounce counter
bounces_left = 1;