if (keyboard_check_pressed(vk_f11)) {
    var is_full = window_get_fullscreen();
    window_set_fullscreen(!is_full);
}