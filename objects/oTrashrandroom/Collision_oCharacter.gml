/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6433CD32
/// @DnDArgument : "code" "score += 1;$(13_10)$(13_10)instance_destroy();$(13_10)$(13_10)effect_create_above(ef_ring, x, y, 1, c_fuchsia);"
score += 1;

instance_destroy();

effect_create_above(ef_ring, x, y, 1, c_fuchsia);