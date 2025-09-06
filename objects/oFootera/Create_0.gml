event_inherited();
audio_play_sound(sfxFootera, 1, false);
attack_cooldown = 1.5 * game_get_speed(gamespeed_fps);
// In a new Script asset
enum FOOTERA_STATE {
    NORMAL,
    ATTACK_JUMP,
    ATTACK_FALL
}
attack_state = FOOTERA_STATE.NORMAL;
is_invulnerable = false;