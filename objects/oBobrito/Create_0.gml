event_inherited();

audio_play_sound(sfxBobrito, 1, false);

attack_cooldown = 1.2 * game_get_speed(gamespeed_fps);
reload = 5.5 * game_get_speed(gamespeed_fps);

shot_interval = 0.15 * game_get_speed(gamespeed_fps);
shots_per_barrage = 5;
max_barrages = 2;

can_attack = true;
current_barrage = 0;
shots_fired_in_barrage = 0;

attack_timer = 0;
shot_timer = 0;
reload_timer = 0;

barrage_in_progress = false;
reload_delay = 1.0 * game_get_speed(gamespeed_fps);
reload_delay_timer = 0;
