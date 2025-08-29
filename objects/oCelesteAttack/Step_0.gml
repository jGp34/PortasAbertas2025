// oCelesteAttack - Step Event

// --- NEW: Lingering Stun Check ---
// Loop through all the beam's visual segments
for (var i = 0; i < array_length(segments); i++) {
    var seg = segments[i];
    var hit_list = ds_list_create();
    var hit_count = collision_line_list(seg.x1, seg.y1, seg.x2, seg.y1, oEnemy, false, true, hit_list, false);

    if (hit_count > 0) {
        for (var j = 0; j < hit_count; j++) {
            var enemy_hit = hit_list[| j];
            // Check if we have NOT hit this enemy before
            if (ds_list_find_index(hit_enemies_list, enemy_hit) == -1) {
                // If it's a new enemy, stun it and add it to our list
                enemy_hit.get_stunned(120);
                ds_list_add(hit_enemies_list, enemy_hit);
            }
        }
    }
    ds_list_destroy(hit_list);
}

// --- Fading Logic (existing) ---
fade_timer -= 1;
if (fade_timer <= 0) {
    instance_destroy();
}