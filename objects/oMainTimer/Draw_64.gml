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
/// @DnDArgument : "var" "timer1"
draw_text(735, 15, string("Time Left: ") + string(timer1));

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 4345B7C7
/// @DnDArgument : "x1" "1000"
/// @DnDArgument : "y1" "25"
/// @DnDArgument : "x2" "1250"
/// @DnDArgument : "y2" "75"
/// @DnDArgument : "value" "timer1/180*100"
/// @DnDArgument : "mincol" "$FFFF16B5"
/// @DnDArgument : "maxcol" "$FF700041"
draw_healthbar(1000, 25, 1250, 75, timer1/180*100, $FFFFFFFF & $FFFFFF, $FFFF16B5 & $FFFFFF, $FF700041 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));