depth = 15;
radius = 128;

var _target = noone;
var _nearest_dist = 999999;

var enemy_count = instance_number(oEnemy);

for (var i = 0; i < enemy_count; i++) {
    var inst = instance_find(oEnemy, i);
    var _dist = point_distance(x, y, inst.x, inst.y);
    
    if (_dist < _nearest_dist) {
        _nearest_dist = _dist;
        _target = inst;
    }
}

target = _target;

var dir;
if (target != noone) {
    dir = point_direction(x, y, target.x, target.y);
} else {
	if (!variable_instance_exists(id, "attack_dir")) {
    attack_dir = 0;
}
    dir = attack_dir;
}

horizontal_speed = lengthdir_x(7, dir);
vertical_speed   = lengthdir_y(7, dir);
