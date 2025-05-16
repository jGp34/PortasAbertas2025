var ground_list = [];

var count = instance_number(oGround);
for (var i = 0; i < count; i++) {
    var g = instance_find(oGround, i);
    var spawn_x = g.x;
    var spawn_y = g.y - g.sprite_height;
    array_push(ground_list, [spawn_x, spawn_y]);
}

if (array_length(ground_list) > 0) {
    var index = irandom(array_length(ground_list) - 1);
    var chosen_pos = ground_list[index];

    x = clamp(chosen_pos[0], 0, room_width - sprite_width);
    y = clamp(chosen_pos[1], 0, room_height - sprite_height);
}

depth = 10;