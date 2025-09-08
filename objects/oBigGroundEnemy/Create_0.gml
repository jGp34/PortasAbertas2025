// Inherit everything from the standard ground enemy
event_inherited();

// Override the stats to be a "Big Enemy"
speed_ = is_enraged ? 4 : 2;
OG_SPEED = speed_;
grav = is_enraged ? 0.85 : 0.7;