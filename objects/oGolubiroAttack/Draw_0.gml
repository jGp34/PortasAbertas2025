// oStunConeAttack - Draw Event

// CHANGED: Replaced alarm[0] / 5 with lifetime / max_lifetime
draw_set_alpha(0.5 * (lifetime / max_lifetime));

draw_set_color(c_white);
var _player_dir = (owner.attack_direction == 1) ? 0 : 180;
draw_primitive_begin(pr_trianglefan);
draw_vertex(owner.x, owner.y);
var _angle_offset = cone_angle / 2; // Use the variable
draw_vertex(owner.x + lengthdir_x(cone_range, _player_dir - _angle_offset), owner.y + lengthdir_y(cone_range, _player_dir - _angle_offset));
draw_vertex(owner.x + lengthdir_x(cone_range, _player_dir + _angle_offset), owner.y + lengthdir_y(cone_range, _player_dir + _angle_offset));
draw_primitive_end();
draw_set_alpha(1);