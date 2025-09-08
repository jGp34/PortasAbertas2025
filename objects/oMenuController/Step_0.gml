// In oMenuController - Step Event

// Get mouse coordinates in the GUI layer
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);

// Reset the selected option each frame
selected_option = -1;

// Loop through all the rooms to check if the mouse is hovering over any of them
for (var i = 0; i < num_rooms; i++) {
    var item_y1 = menu_y + (i * menu_item_height);
    var item_y2 = item_y1 + menu_item_height;

    // Check if the mouse's Y position is over the current item
    if (my >= item_y1 && my < item_y2) {
        // Simple horizontal check (you can make this more precise if needed)
        if (abs(mx - menu_x) < 200) {
            selected_option = i;

            // If the player clicks, go to the selected room
            if (mouse_check_button_pressed(mb_left)) {
                var room_to_go = global.room_list[selected_option];
                
                // Safety check to make sure the room exists before trying to go to it
                if (room_exists(room_to_go)) {
                    room_goto(room_to_go);
					global.previous_room = room_to_go;
                }
            }
        }
    }
}