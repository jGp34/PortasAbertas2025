var _colors_to_blend = [];

if (is_frozen) {
    array_push(_colors_to_blend, c_aqua);
}

if (is_charmed) {
    array_push(_colors_to_blend, c_purple);
}

if (is_poisoned) {
    array_push(_colors_to_blend, c_lime);
}

if (is_enraged) {
    array_push(_colors_to_blend, c_red);
}

// --- The blending calculation remains the same ---
var _effect_count = array_length(_colors_to_blend);

if (_effect_count > 0) {
    var _r = 0, _g = 0, _b = 0;

    // Add up the color components
    for (var i = 0; i < _effect_count; i++) {
        var _color = _colors_to_blend[i];
        _r += color_get_red(_color);
        _g += color_get_green(_color);
        _b += color_get_blue(_color);
    }
    
    // Calculate the average and set the blend color
    image_blend = make_color_rgb(_r / _effect_count, _g / _effect_count, _b / _effect_count);

} else {
    // If no effects are active, reset to normal
    image_blend = is_enraged ? c_red : c_white;
}