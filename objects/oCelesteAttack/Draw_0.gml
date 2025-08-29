// oCelesteAttack - Draw Event

// Set color and alpha for the entire beam
var _alpha = (fade_timer / max_fade_time) * 0.8;
draw_set_color(c_white);
draw_set_alpha(_alpha);

// Loop through each segment and draw it as a 1-pixel-tall FILLED RECTANGLE
for (var i = 0; i < array_length(segments); i++) {
    var seg = segments[i];
    
    // CHANGED: Replaced draw_line() with draw_rectangle()
    draw_rectangle(seg.x1, seg.y1, seg.x2, seg.y1 + 1, false);
}

// Reset alpha so the rest of the game draws correctly
draw_set_alpha(1);