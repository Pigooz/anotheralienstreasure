/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1281A2A1
/// @DnDArgument : "font" "fnt_menu"
/// @DnDSaveInfo : "font" "fnt_menu"
draw_set_font(fnt_menu);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2A164641
/// @DnDArgument : "x" "735"
/// @DnDArgument : "y" "15"
/// @DnDArgument : "caption" ""Time Left: ""
draw_text(735, 15, string("Time Left: ") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 4345B7C7
/// @DnDArgument : "x1" "960"
/// @DnDArgument : "y1" "20"
/// @DnDArgument : "x2" "1210"
/// @DnDArgument : "y2" "60"
/// @DnDArgument : "value" "timer/10*100"
/// @DnDArgument : "mincol" "$FFFF16B5"
/// @DnDArgument : "maxcol" "$FF700041"
draw_healthbar(960, 20, 1210, 60, timer/10*100, $FFFFFFFF & $FFFFFF, $FFFF16B5 & $FFFFFF, $FF700041 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));