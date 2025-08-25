// Variables for the main Cacto projectile
depth = 15;
split_attack = function() {
	audio_play_sound(sfxCactoAttack2, 1, false);
    var _split_speed = 5; // Speed of the smaller projectiles
    for (var i = 0; i < 8; i++) {
        var _angle = i * 45; 
        var _split_instance = instance_create_layer(x, y, "Instances", oCactoAttack2);
        _split_instance.direction = _angle;
        _split_instance.speed = _split_speed;
    }
}