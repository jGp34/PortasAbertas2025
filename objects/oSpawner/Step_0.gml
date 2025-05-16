spawn_timer++;

if (spawn_timer >= spawn_interval) {
    spawn_timer = 0;
    instance_create_layer(x, y, "Instances", oEnemy);
}

if (global.timer mod 300 == 0 && spawn_interval > 60) {
    spawn_interval -= 10;
}