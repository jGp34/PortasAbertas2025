event_inherited();
playerValues = {
	walkSpeed : 7.5,
	jumpSpeed : 20.0,
}
grav = 0.4;
audio_play_sound(sfxBombardino, 1, false);
attack_cooldown = 0.8 * game_get_speed(gamespeed_fps);