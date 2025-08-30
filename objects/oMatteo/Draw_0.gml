// In your Player Object's Draw Event

// 1. Draw the player's own sprite first.
draw_self();

// 2. Now, draw the chain on top of the player.
if (instance_exists(oMatteoAttack)) {
    
    // Define the start and end points of the chain
    var _anchor_x = x;
    var _anchor_y = y;
    var _ball_x = oMatteoAttack.x;
    var _ball_y = oMatteoAttack.y;
    
    // Calculate the distance and direction to the ball
    var _dist = point_distance(_anchor_x, _anchor_y, _ball_x, _ball_y);
    var _dir = point_direction(_anchor_x, _anchor_y, _ball_x, _ball_y);
    
    // Get the width of one chain link sprite
    var _link_width = sprite_get_width(sAttackMatteo2);
    
    // Loop and draw the link sprite repeatedly along the line
    for (var i = 0; i < _dist; i += _link_width) {
        var _draw_x = _anchor_x + lengthdir_x(i, _dir);
        var _draw_y = _anchor_y + lengthdir_y(i, _dir);
        draw_sprite_ext(sAttackMatteo2, 0, _draw_x, _draw_y, 1, 1, _dir, c_white, 1);
    }
}