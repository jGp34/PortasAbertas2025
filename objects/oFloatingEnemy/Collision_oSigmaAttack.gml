// --- Anti-Multi-Hit Logic ---
// Get the unique ID of the projectile that just hit us.
var _projectile_id = other.id;

// Check if we've already been hit by this specific projectile instance.
for (var i = 0; i < array_length(projectiles_hit_by); i++) {
    if (projectiles_hit_by[i] == _projectile_id) {
        // If we found it, do nothing and exit the event.
        exit;
    }
}

// If we're here, it's a new hit. Add its ID to our list so it can't hit us again.
array_push(projectiles_hit_by, _projectile_id);


// --- Freeze/Shatter Logic ---
// If we are already frozen from a previous hit...
if (is_frozen) {
    // ...this is the second hit. Shatter and destroy the enemy.
    instance_destroy();
}
// Otherwise, this is the first hit...
else {
    // ...so we freeze.
    is_frozen = true;
    image_blend = c_aqua;
    speed_ = 0; // Stop its general movement/animation speed

    // --- NEW: Flying Enemy Logic ---
    // If the enemy was floating, make it fall out of the sky.
    if (state == ENEMY_STATE.FLOATING) {
        state = ENEMY_STATE.FALLING;
        // Reset speeds to ensure a clean fall under gravity.
        vspd = 0;
        hspd = 0;
    }
}