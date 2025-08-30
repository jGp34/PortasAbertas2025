event_inherited();
audio_play_sound(sfxGolubiro, 1, false);
attack_cooldown = 0.8 * game_get_speed(gamespeed_fps);

enum COMBO_ATTACK_MODE {
    STUN_CONE,
    TELEPORT_BULLET
}

// Set the starting mode to the stun cone
combo_mode = COMBO_ATTACK_MODE.STUN_CONE;