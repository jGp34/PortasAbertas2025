event_inherited();
audio_play_sound(sfxCrocodildo, 1, false);

// --- Main Attack (AoE Dance) ---
main_attack_cooldown = 12.5 * game_get_speed(gamespeed_fps);
main_attack_timer = 0;
can_cast_main_attack = true;
is_main_attack_active = false;
music_timer = 0; // NEW: This will track the 10-second music window

// --- Shield Attack ---
shield_attack_cooldown = 1.75 * game_get_speed(gamespeed_fps);
shield_attack_timer = 0;
can_cast_shield = false;

// --- Shield State & Duration ---
is_shielded = false;
shield_duration = 3 * game_get_speed(gamespeed_fps);

// --- Rainbow Effect ---
rainbow_hue = 0;
rainbow_speed = 4;

radius = 80;