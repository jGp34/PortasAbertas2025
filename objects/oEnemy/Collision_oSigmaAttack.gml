// This is the complete collision event for the PARENT oEnemy

// Get the unique ID of the projectile
var _projectile_id = other.id;

// Check if we've been hit by this projectile before
if (array_contains(projectiles_hit_by, _projectile_id)) {
    exit; // Already hit by this projectile, do nothing.
}

// Add its ID to the list
array_push(projectiles_hit_by, _projectile_id);

// Apply the same freeze or destroy logic
if (is_frozen) {
    // Second hit: destroy the enemy.
    instance_destroy();
} else {
    // First hit: apply the freeze effect.
    apply_freeze_effect(); // This calls the correct version for each enemy type!
}