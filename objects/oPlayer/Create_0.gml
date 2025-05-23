jump_speed = 15.5;
speed_ = 7.5;
horz_speed = 0;
vert_speed = 0;
grav = 0.5;
move = 1;
depth = -10;

can_attack = true;
attack_cooldown = 0.4 * game_get_speed(gamespeed_fps); //cooldown em segundos
attack_timer = 0;
attack_direction = 0; // -1 esquerda, 1 direita