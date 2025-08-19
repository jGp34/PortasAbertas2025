if (global.mode == 1) {
    var px = x;
    var py = y;

    // Was the player standing on ground before transform?
    var was_on_ground = place_meeting(px, py + 1, oGround);

    StopTransformSound();
    var new_player;
    do {
        var index = irandom(array_length(global.character_list) - 1);
        new_player = global.character_list[index];
    } until (new_player != object_index);

    instance_change(new_player, true);

    // Keep position after change
    x = px;
    y = py;

    // Mark state if needed
    if (was_on_ground) {
        vspeed = 0; // optional: reset falling
    }
}
else if (global.mode == 2) {
    var px = x;
    var py = y;
    var current_depth = depth;

    StopTransformSound();

    instance_create_depth(px, py, current_depth, object_index);
    instance_destroy();
}
