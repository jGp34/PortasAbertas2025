global.timer = 0;
global.pickup_count = 0;
global.enraged_enemy_queue = 0;
global.enraged_floating_enemy_queue = 0;
global.enraged_big_enemy_queue = 0;
global.character_list = [oTung, oTralalero, oBombardino, oPatapim, oAssassino, oBallerina, oBoneca, oChimpanzini, oFruli, oGlorbo, oLirili, oSaturno, oTripi, oUdin, oGusini, oGaram, oBicus, oTrulimero, oSvinino]
randomize();
instance_create_layer(0, 0, "Instances", oPickup);
audio_play_sound(mGame, 1, true);