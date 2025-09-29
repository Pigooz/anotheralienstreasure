/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 223A0A3C
/// @DnDArgument : "var" "isPlaying"
if(isPlaying == 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EB5B11B
	/// @DnDParent : 223A0A3C
	/// @DnDArgument : "var" "score"
	score = 0;}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3563FE73
/// @DnDArgument : "code" "var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));$(13_10)var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));$(13_10)var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));$(13_10)var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));$(13_10)$(13_10)var _xinput = _right - _left;$(13_10)var _yinput = _down - _up;$(13_10)$(13_10)move_and_collide(_xinput * my_speed, _yinput * my_speed, oWall)$(13_10)$(13_10)x=clamp(x, 0, room_width)$(13_10)y=clamp(y, 0, room_height)$(13_10)$(13_10)if place_meeting(x,y,oTrash1)$(13_10){$(13_10)	room_goto_next()$(13_10)}$(13_10)$(13_10)if place_meeting(x,y,oCar)$(13_10){$(13_10)	room_goto(MainLevel)$(13_10)}$(13_10)$(13_10)if place_meeting(x,y,oTrash3)$(13_10){$(13_10)	room_goto(EndScreen)$(13_10)}$(13_10)$(13_10)if place_meeting(x,y,oSpike)$(13_10){$(13_10)	x = 61;$(13_10)	y = 624;$(13_10)}$(13_10)"
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;

move_and_collide(_xinput * my_speed, _yinput * my_speed, oWall)

x=clamp(x, 0, room_width)
y=clamp(y, 0, room_height)

if place_meeting(x,y,oTrash1)
{
	room_goto_next()
}

if place_meeting(x,y,oCar)
{
	room_goto(MainLevel)
}

if place_meeting(x,y,oTrash3)
{
	room_goto(EndScreen)
}

if place_meeting(x,y,oSpike)
{
	x = 61;
	y = 624;
}