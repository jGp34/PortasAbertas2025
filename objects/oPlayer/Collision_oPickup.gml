// Player collision with transform pickup

// This part is an assumption of how your code is structured.
// Only the 'global.mode == 1' part is what we're fixing.
if (global.mode == 1) {
    // --- THIS IS THE CORRECTED LOGIC ---

    // 1. Save the current position, but most importantly, the bottom of the hitbox.
    var px = x;
    var p_bottom = bbox_bottom; // The key! We save the "feet" position.

    // This part of your code is fine.
    StopTransformSound();
    var new_player;
    do {
        var index = irandom(array_length(global.character_list) - 1);
        new_player = global.character_list[index];
    } until (new_player != object_index);

    // 2. Change the instance. The code from here on is executed by the NEW object.
    instance_change(new_player, true);

    // 3. Restore the horizontal position and adjust the vertical position.
    x = px;
    // This calculation adjusts the new sprite's 'y' so its feet are where the old one's were.
    y += p_bottom - bbox_bottom;

    // Reset vertical speed to prevent carrying over a falling speed.
    vert_speed = 0;

} else if (global.mode == 2) {
    // This mode seems fine as is.
    var px = x;
    var py = y;
    var current_depth = depth;

    StopTransformSound();

    instance_create_depth(px, py, current_depth, object_index);
    instance_destroy();
}

// Your projectile-clearing code is also fine.
var _my_id = id;
with (oHotspotAttack) {
    if (owner_id == _my_id) {
        instance_destroy();
    }
}