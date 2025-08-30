event_inherited();
matteo_attack();

if (instance_exists(spike_ball_instance)) {
    // If the ball is out, you are slowed
    hspeed = hspeed * 0.5; // Or however you handle movement speed
}