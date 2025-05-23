life--;

if (!instance_exists(player)) {
    instance_destroy();
    exit;
}

if (player.object_index != oSvinino) {
    instance_destroy();
    exit;
}
image_xscale = player.image_xscale;
x = player.x + (image_xscale > 0 ? 2 : -2);
y = player.y - 16;

if (life <= 0) {
    instance_destroy();
}
