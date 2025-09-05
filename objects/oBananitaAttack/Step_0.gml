x += horizontal_speed;

// --- Growth ---
// We only grow if we haven't reached the max size yet
if (abs(image_xscale) < max_scale) {
    // Increase the scale. We use sign() to respect the initial direction.
    image_xscale += sign(image_xscale) * growth_rate;
    image_yscale += growth_rate;
}

