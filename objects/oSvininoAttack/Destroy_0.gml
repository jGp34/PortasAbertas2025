var _attack_x = x;
var _attack_y = y;
var _sound_id = audio_play_sound(sfxExplosion, 1, false);
audio_sound_gain(_sound_id, 2, 0);
var fx = instance_create_layer(x, y, "Instances", oSvininoExplosionFlash);
with (oEnemy) {
    if (point_distance(x, y, other.x, other.y) <= other.radius) {
        instance_destroy();
    }
}