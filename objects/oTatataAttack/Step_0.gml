// oTatataAttack - Step Event

// Move in a straight line
x += horizontal_speed;

// Countdown lifetime
lifetime -= 1;
if (lifetime <= 0) {
    instance_destroy();
}