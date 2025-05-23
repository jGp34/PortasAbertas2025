function scDeath(){
	audio_stop_sound(mGame);
	StopTransformSound();
	audio_play_sound(sfxDeath, 1, true);
	room_goto(rDeath);
}	