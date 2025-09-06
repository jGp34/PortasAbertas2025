// Countdown the lifetime timer each frame
lifetime -= 1;

// Destroy the instance when the timer runs out
if (lifetime <= 0) {
    instance_destroy();
}