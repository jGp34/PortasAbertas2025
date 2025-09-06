global.timer = 0;
global.pickup_count = 0;
global.enraged_ground_enemy_queue = 0;
global.enraged_floating_enemy_queue = 0;
global.enraged_big_ground_enemy_queue = 0;
global.mode = 1;
global.character_list = [oTung, oTralalero, oBombardino, oPatapim, oAssassino, oBallerina, oBoneca, oChimpanzini, oFruli, oGlorbo, oLirili, oSaturno, oTripi, oUdin, oGusini, oGaram, oBicus, oTrulimero, oSvinino, oBobrito, oBurbaloni, oCacto, oHotspot, oTric, oTropi, oCeleste, oFrigo, oGolubiro, oMatteo, oTatata, oCocofanto, oTob, oSigma, oCrocodildo, oBlueberrinni, oBananita, oEspressona]
//oChicletera, oFootera, oOrangutini
randomize();
instance_create_layer(0, 0, "Instances", oPickup);
audio_play_sound(mGame, 1, true);