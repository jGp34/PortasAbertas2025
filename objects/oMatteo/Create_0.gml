event_inherited();
audio_play_sound(sfxMatteo, 1, false);
attack_cooldown = 1.0 * game_get_speed(gamespeed_fps);

// In your Player Object's Create Event
spike_ball_instance = noone;
normal_speed = 5; // Or whatever your base speed is