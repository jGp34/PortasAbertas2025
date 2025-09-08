// In oMenuController - Create Event

// Get the total number of rooms from our global list
num_rooms = array_length(global.room_list);

// --- Menu Styling ---
// Position on screen
menu_x = display_get_gui_width() / 2;
menu_y = 150;
menu_item_height = 50; // The vertical space each option takes up

// Colors
color_normal = c_white;
color_selected = c_yellow;

// --- State Variables ---
// This will store the index of the option the mouse is hovering over (-1 for none)
selected_option = -1;