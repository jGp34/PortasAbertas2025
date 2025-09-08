global.timer++;
if(global.pickup_count > global.high_score){
	global.high_score = global.pickup_count;
}

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Current pickups
draw_text(32, 32, "Pickups: " + string(global.pickup_count));

// Best score
draw_text(32, 64, "Best: " + string(global.high_score));

if (keyboard_check_pressed(vk_escape)) {
	audio_stop_all()
    room_goto(rMenu);
}