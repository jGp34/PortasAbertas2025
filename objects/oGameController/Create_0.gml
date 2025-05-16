global.timer = 0;
global.pickup_count = 0;
global.enraged_enemy_queue = 0;
global.character_list = [oTung, oTralalero]
randomize();
instance_create_layer(0, 0, "Instances", oPickup);
audio_play_sound(mGame, 1, true);