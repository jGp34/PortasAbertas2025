if (keyboard_check_pressed(vk_space)) {
	audio_stop_sound(sfxDeath);
    room_goto(rGame);
}