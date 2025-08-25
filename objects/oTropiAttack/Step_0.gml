// 1. APLICA A GRAVIDADE
// A física continua a mesma
speed_v += gravity_force;
speed_v = clamp(speed_v, -max_speed_v, max_speed_v);

// 2. MOVIMENTO E COLISÃO HORIZONTAL
// Primeiro, a gente move o objeto no eixo X
x += speed_h;

// AGORA, a gente checa se, APÓS O MOVIMENTO, ele está colidindo com um obstáculo
if (place_meeting(x, y, oObstacle)) {
    // Se colidiu, a mágica acontece aqui:
    // 1. Voltamos para a posição segura do frame anterior
    x = xprevious;
    // 2. SÓ ENTÃO invertemos a velocidade para o próximo frame
    speed_h *= -1;
}

// 3. MOVIMENTO E COLISÃO VERTICAL
// Exatamente a mesma lógica para o eixo Y
y += speed_v;

if (place_meeting(x, y, oObstacle)) {
    y = yprevious;
    speed_v *= -1;
}


// 4. EFEITO VISUAL EXTRA
// A rotação continua igual pra dar um charme
image_angle += speed_h;