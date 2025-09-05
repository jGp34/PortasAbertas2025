event_inherited();
crocodildo_attack();

// --- Shield Management ---
if (is_shielded) {
    shield_timer--;

    // Check if the shield timer has run out
    if (shield_timer <= 0) {
        is_shielded = false;
        image_blend = c_white; // Reset the color to normal
    } 
    // Otherwise, if the shield is still active this frame...
    else { 
        // Update the rainbow effect using the faster speed
        rainbow_hue = (rainbow_hue + rainbow_speed) % 256;
        image_blend = make_color_hsv(rainbow_hue, 255, 255);

        // Check for collision with an enemy
        var _collided_enemy = instance_place(x, y, oEnemy);
        if (_collided_enemy != noone) {
            with (_collided_enemy) {
                instance_destroy();
            }
            is_shielded = false;
            image_blend = c_white; // Also reset color on hit
			audio_play_sound(sfxExplosion, 1, false);
			var fx = instance_create_layer(x, y, "Instances", oCrocodildoFlash2);
			with (oEnemy) {
			    if (point_distance(x, y, other.x, other.y) <= other.radius) {
			        instance_destroy();
			    }
			}
        }
    }
}