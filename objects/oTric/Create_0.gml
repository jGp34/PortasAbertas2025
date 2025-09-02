event_inherited();
audio_play_sound(sfxTric, 1, false);
attack_cooldown = 2.0 * game_get_speed(gamespeed_fps);

// In your Player's Create Event

// Define the states for Tric's attack sequence
enum TRIC_STATE {
    READY,
    WINDUP,
    FIRING
}

// Tric's attack variables
tric_state = TRIC_STATE.READY;
tric_timer = 0;
tric_shots_fired = 0;

// --- These are your tuning knobs! ---
// Molto importante: Change these values to get the feel you want.
TRIC_WINDUP_TIME = 60;       // Wind-up duration in frames (30 = half a second at 60fps)
TRIC_SHOTS_PER_BARRAGE = 18; // The number of bullets to fire
TRIC_SHOT_INTERVAL = 1.65;      // Frames between each shot in the barrage
TRIC_RECOIL_STRENGTH = 10.5;  // How hard the gun pushes you back
TRIC_BULLET_SPREAD = 20;     // Total angle of the cone of fire (e.g., 20 means bullets spread from -10 to +10 degrees)