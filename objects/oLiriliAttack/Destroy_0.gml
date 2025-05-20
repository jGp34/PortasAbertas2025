audio_stop_sound(sfxLiriliAttack);
audio_play_sound(sfxExplosion, 1, false);
var fx = instance_create_layer(x, y, "Instances", oTripiExplosionFlash);
with (oEnemy) {
    if (point_distance(x, y, other.x, other.y) <= other.radius) {
        instance_destroy();
    }
}