var px = x;
var py = y;

scStopTransformSound();
var new_player;
do {
    var index = irandom(array_length(global.character_list) - 1);
    new_player = global.character_list[index];
} until (new_player != object_index);

instance_change(new_player, true);

x = px;
y = py;

while (place_meeting(x, y, oGround)) {
    y -= 1;
}