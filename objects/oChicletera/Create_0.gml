event_inherited();
audio_play_sound(sfxChicletera, 1, false);
attack_cooldown = 3.0 * game_get_speed(gamespeed_fps);

// Add these variables to your player's Create Event

speed_boost_timer = 0; // Tracks the remaining duration of the boost
speed_boost_duration = 2 * game_get_speed(gamespeed_fps); // How long the boost lasts (3 seconds)

projectile_spawn_timer = 0; // A timer to control how often projectiles are spawned
projectile_spawn_rate = 8;  // Spawn a new projectile every 8 frames

original_walk_speed = 0; // Stores the player's normal speed during the boost