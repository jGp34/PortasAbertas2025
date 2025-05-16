var ground_list = [];

var count = instance_number(oGround);
for (var i = 0; i < count; i++) {
    var g = instance_find(oGround, i);
    var spawn_x = g.x;
    var spawn_y = g.y - g.sprite_height;
    array_push(ground_list, [spawn_x, spawn_y]);
}

ground_list = array_shuffle(ground_list);

var found = false;
for (var i = 0; i < array_length(ground_list); i++) {
    var pos = ground_list[i];
    var test_x = clamp(pos[0], 0, room_width - sprite_width);
    var test_y = clamp(pos[1], 0, room_height - sprite_height);
    
    x = test_x;
    y = test_y;
    
    if (!place_meeting(x, y, oSpawner) && !instance_place(x, y, object_index)) {
        found = true;
        break;
    }
}