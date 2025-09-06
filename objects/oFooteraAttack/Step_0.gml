// Countdown the lifetime timer each step
lifetime -= 1;

// If the timer has run out, destroy the projectile
if (lifetime <= 0) {
    instance_destroy();
}