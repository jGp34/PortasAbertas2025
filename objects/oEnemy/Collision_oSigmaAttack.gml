// --- Anti-Multi-Hit Logic ---

// Get the unique ID of the projectile that just hit us.
var _projectile_id = other.id;

// Check if we've already been hit by this specific projectile instance.
// This prevents one projectile from applying its effect multiple times.
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
    // You could add a shatter sound/effect here for more impact!
    instance_destroy();
}
// Otherwise, this is the first hit...
else {
    // ...so we freeze.
    is_frozen = true;
    image_blend = c_aqua; // The classic freeze color
    
    // Use your enemy's specific speed variable to stop it.
    // I'm using 'speed_' based on your Frigo example.
    speed_ = 0; 
}