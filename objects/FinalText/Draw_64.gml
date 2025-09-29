/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 666F45D6
/// @DnDArgument : "font" "fnt_menu"
/// @DnDSaveInfo : "font" "fnt_menu"
draw_set_font(fnt_menu);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5E2D6D63
/// @DnDArgument : "color" "$FFFF82FA"
draw_set_colour($FFFF82FA & $ffffff);
var l5E2D6D63_0=($FFFF82FA >> 24);
draw_set_alpha(l5E2D6D63_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4BFF5640
/// @DnDArgument : "caption" ""Total trash collected:  ""
/// @DnDArgument : "var" "score"
draw_text(0, 0, string("Total trash collected:  ") + string(score));