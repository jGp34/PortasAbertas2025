spawn_timer++;
last_spawn++;
if(last_spawn > 10)
{
	if (spawn_timer >= spawn_interval) {
		last_spawn = 0;
	    spawn_timer = 0;
	    var normal_enemy = instance_create_layer(x, y, "Instances", oEnemy);
	    normal_enemy.enraged = false;
	}
	else if (global.enraged_enemy_queue > 0) {
		global.enraged_enemy_queue--;
		last_spawn = 0;
	    var angry_enemy = instance_create_layer(x, y, "Instances", oEnragedEnemy);
	    angry_enemy.enraged = true;
	}
}

if (global.timer mod 300 == 0 && spawn_interval > 60) {
    spawn_interval -= 10;
}

