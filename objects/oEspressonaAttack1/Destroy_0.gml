// Play the splash sound effect
audio_play_sound(sfxEspressonaAttack2, 1, false);

// Create the new droplet object at the projectile's position
var _droplet = instance_create_layer(x, y + 8, "Instances", oEspressonaAttack2);

// Change the new droplet's color to black
_droplet.image_blend = c_black;