// Inherit everything from the standard ground enemy
event_inherited();

// Override the stats to be a "Big Enemy"
speed_ = 4;
OG_SPEED = speed_;
grav = 0.85;
image_blend = c_red;