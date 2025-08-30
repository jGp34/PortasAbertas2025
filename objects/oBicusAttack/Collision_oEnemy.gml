instance_destroy(other);
var fruta = instance_create_layer(other.x, other.y, "Instances", oBicusAttack2);
fruta.direction = direction;
fruta.image_xscale = (direction == 1) ? -1 : 1;