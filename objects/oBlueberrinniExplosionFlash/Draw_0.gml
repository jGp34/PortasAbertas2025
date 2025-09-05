// Draw a purple, semi-transparent circle for the dance AoE
draw_set_color(c_navy);
draw_set_alpha(0.4); 
draw_circle(x, y, radius, false);

// Reset alpha so it doesn't affect other drawing
draw_set_alpha(1);