/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6433CD32
/// @DnDArgument : "code" "instance_destroy();$(13_10)$(13_10)score += 1;$(13_10)$(13_10)effect_create_above(ef_ring, x, y, 1, c_fuchsia);$(13_10)audio_play_sound(snd_pickup, 0, false, 1, 0, random_range(0.6, 1.1));"
instance_destroy();

score += 1;

effect_create_above(ef_ring, x, y, 1, c_fuchsia);
audio_play_sound(snd_pickup, 0, false, 1, 0, random_range(0.6, 1.1));