// In oMenuController - Draw GUI Event

// --- Set all drawing settings for the menu ---
draw_set_font(-1); // Resets to the default font
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Draw the menu title
draw_set_color(c_white);
draw_text(menu_x, menu_y - 80, "SELECT A LEVEL");

// Loop through and draw each room name
for (var i = 0; i < num_rooms; i++) {
    var item_y = menu_y + (i * menu_item_height);
    
    var room_asset_id = global.room_list[i];
    var room_name = room_get_name(room_asset_id);
    
    var current_color = (i == selected_option) ? color_selected : color_normal;
    draw_set_color(current_color);
    
    draw_text(menu_x, item_y, room_name);
}

// --- IMPORTANT: Reset all drawing settings ---
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);