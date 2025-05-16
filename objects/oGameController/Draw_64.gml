draw_set_font(fGame);
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(32, 8, "Pickups: " + string(global.pickup_count) + "                                                     All-Time Best: " + string(global.high_score));
