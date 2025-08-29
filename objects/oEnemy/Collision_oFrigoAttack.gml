// oEnemy - Collision with oFrigoAttack

// Get the unique ID of the projectile that just hit us
var _projectile_id = other.id;

// Check if this projectile's ID is already in our list
for (var i = 0; i < array_length(projectiles_hit_by); i++) {
    if (projectiles_hit_by[i] == _projectile_id) {
        // If we found it, it means this projectile has hit us before.
        // Do nothing and exit the event.
        exit;
    }
}

// If we're here, it's a new projectile.
// 1. Add its ID to our list so it can't hit us again.
array_push(projectiles_hit_by, _projectile_id);

// 2. Now, apply the freeze/damage logic.
// If we are already frozen from a PREVIOUS attack...
if (is_frozen) {
    // ...this is the second hit. Destroy ourselves.
    instance_destroy();
}
// Otherwise, this is the first hit...
else {
    // ...so we freeze.
    is_frozen = true;
    image_blend = c_aqua;
    speed_ = 0; // Use your enemy's speed variable
}