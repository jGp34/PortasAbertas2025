// Check if the current owner instance still exists.
if (instance_exists(owner)) {
    // If yes, orbit around it as normal.
    orbit_angle += orbit_speed;
    x = owner.x + lengthdir_x(orbit_radius, orbit_angle);
    y = owner.y + lengthdir_y(orbit_radius, orbit_angle);
} 
else {
    // If the original owner is gone, try to find a new player instance.
    var _new_owner = instance_find(oPlayer, 0); // Finds the first instance of oPlayer or its children.

    if (instance_exists(_new_owner)) {
        // If a new player is found, make it the new owner.
        owner = _new_owner;
    } 
    else {
        // If no player character is found at all, then destroy the attack.
        instance_destroy();
    }
}