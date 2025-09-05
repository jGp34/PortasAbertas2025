// --- Piercing Logic ---

// Check the state of the enemy we just collided with.
var _enemy_instance = other;

// If the enemy is NOT frozen, this projectile is destroyed on impact.
if (!_enemy_instance.is_frozen) {
    instance_destroy();
}
// If the enemy IS already frozen, this projectile pierces through it and continues flying.
// The enemy's own collision event will handle the shatter effect.