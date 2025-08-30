instance_destroy(other);
instance_destroy();

if (instance_exists(owner)) {
    // Teleport the player to the enemy's position
    owner.x = other.x;
    owner.y = other.y;
	audio_play_sound(sfxExplosion, 1, false);
	var fx = instance_create_layer(x, y, "Instances", oGolubiroExplosionFlash);
	with (oEnemy) {
	    if (point_distance(x, y, other.x, other.y) <= other.radius) {
	        instance_destroy();
	    }
	}
}