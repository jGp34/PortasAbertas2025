event_inherited();
audio_play_sound(sfxCocofanto, 1, false);
attack_cooldown = 0.9	 * game_get_speed(gamespeed_fps);

has_ranged_shot = false; // Does the next normal attack fire a bullet?
bonus_ranged_shots = 0;  // How many instant shots from pickups are stored?