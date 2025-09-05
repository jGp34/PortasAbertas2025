// This is the complete collision event for the PARENT oEnemy

// Get the unique ID of the projectile
var _projectile_id = other.id;

// Use array_contains for a cleaner check to see if we've been hit before
if (array_contains(projectiles_hit_by, _projectile_id)) {
    exit; // Already hit by this projectile, do nothing.
}

// If not, add its ID to the list to prevent future hits from the same projectile
array_push(projectiles_hit_by, _projectile_id);

// Now, apply the freeze or destroy logic
if (is_frozen) {
    // If we're already frozen, this is the second hit. Destroy the enemy.
    instance_destroy();
} else {
    // This is the first hit. Apply the standard freeze effect.
    apply_freeze_effect();
}