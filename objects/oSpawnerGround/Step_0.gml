spawn_timer++;
last_spawn++;

if (last_spawn > 10) {
	if (spawn_timer >= spawn_interval) {
		last_spawn = 0;
		spawn_timer = 0;
		var roll = random(1);
		if (roll < 0.4) {
			var big = instance_create_layer(x, y, "Instances", oBigGroundEnemy);
			big.is_enraged = false;
		}
		else {
			var normal_enemy = instance_create_layer(x, y, "Instances", oGroundEnemy);
			normal_enemy.is_enraged = false;
		}
	}
	
	else if (global.enraged_ground_enemy_queue > 0) {
		global.enraged_ground_enemy_queue--;
		last_spawn = 0;

		var angry_enemy = instance_create_layer(x, y, "Instances", oGroundEnemy, {is_enraged: true});
		angry_enemy.is_enraged = true;
	}
	else if (global.enraged_big_ground_enemy_queue > 0) {
		global.enraged_big_ground_enemy_queue--;
		last_spawn = 0;

		var angry_big = instance_create_layer(x, y, "Instances", oBigGroundEnemy, {is_enraged: true});
		angry_big.is_enraged = true;
	}
}

if (global.timer mod 300 == 0 && spawn_interval > 60) {
	spawn_interval -= 10;
}
