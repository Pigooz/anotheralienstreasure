score += 1;

effect_create_above(ef_ring, x, y, 1, c_fuchsia);

instance_destroy();
audio_play_sound(snd_pickup, 0, false, 1, 0, random_range(0.6, 1.1));