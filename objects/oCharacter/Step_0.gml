if(isPlaying == 0)
{
	score = 0;
}

// Movement & Collisions

var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;
	
	var hsp = 0
	var vsp = 0

if (_xinput != 0 and _yinput != 0){
	
	hsp = _xinput * speed_diagonal
	vsp = _yinput * speed_diagonal	
	
} else {
	
	hsp = _xinput * my_speed
	vsp = _yinput * my_speed
	
}

_xinput += hsp;
_yinput += vsp;

move_and_collide(_xinput * my_speed, _yinput * my_speed, oWall)

// Dialogue

if (self.talking) return;

var pressed_space = keyboard_check_released(vk_space);
var nearby_dialogue = collision_circle(x, y, 40, DialoguePrompt, true, true)

if(nearby_dialogue != noone)
{
	with (nearby_dialogue)
	{
		if (pressed_space) { show_dialogue_box(); }
		
		else { active = true; }		
	}
}
else
{
	with(DialoguePrompt)
	{
		active = false;
	}
}
if (keyboard_check_pressed(vk_space))
{
	create_dialogue([
	{
		name: "testing testing",
		msg: "IT WORKS MAN"
	}
	])
}
// Room Boundaries

x=clamp(x, 0, room_width)
y=clamp(y, 0, room_height)

if place_meeting(x,y,oTrashrandroom)
{	
	randomize();
	var random_room = irandom(array_length(global.room_list) -1);
	var chosen_room = global.room_list[random_room];
	room_goto(chosen_room)
	
}

if place_meeting(x,y,oCar)
{
	room_goto(MainLevel)
}


if place_meeting(x,y,oTrash2)
{
	room_goto(MainLevel)
}

if place_meeting(x,y,oTrash3)
{
	room_goto(EndScreen)
}


if room == Minigame3
{
	my_speed = 1.5
}
else
{
	my_speed = 3
}
if place_meeting(x,y,oSpike)
{
	x = 61;
	y = 624;
}
if score == 75
{
	room_goto(EndScreen)
}