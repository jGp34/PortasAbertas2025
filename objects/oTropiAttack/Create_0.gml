// Variáveis de movimento
speed_h = 0; // Velocidade horizontal
speed_v = 0; // Velocidade vertical

// "Física" do projétil
max_speed_v = 15;    // Velocidade máxima de queda

x_remainder = 0;
y_remainder = 0;
bounce_dampen = 0.99; // Reduces bounce speed over time

// We'll rename this to be consistent with the other attack object
gravity_effect = 0.4;