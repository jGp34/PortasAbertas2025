// --- 1. ALWAYS run the attack state machine ---
// This needs to run every frame to manage the attack's state.
event_inherited();

footera_attack();
// --- 3. Override horizontal movement if attacking ---
// This part comes LAST to make sure it overrides any input from the parent event.
if (attack_state != FOOTERA_STATE.NORMAL) {
    // Prevent the player from moving left or right during the attack.
    horz_speed = 0; 
}