event_inherited();
audio_play_sound(sfxBicus, 1, false);
attack_cooldown = 1.75 * game_get_speed(gamespeed_fps);
is_dashing = false;
dash_speed = 0;
dash_timer = 0;
dash_duration = 20;