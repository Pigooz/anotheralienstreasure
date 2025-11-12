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

move_and_collide(_xinput * my_speed, _yinput * my_speed, [oFence, oFenceTop, oWall])



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

// Room Boundaries

x=clamp(x, 0, room_width)
y=clamp(y, 0, room_height)

if place_meeting(x,y,oTrashrandroom)
{	
	alarm[0] = 0.2*room_speed;	
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
	room_goto(Minigame6)
}
if place_meeting(x,y,oEnemy)
{
	room_goto(MainLevel)
}
if place_meeting(x,y,oEnemyHorizontal)
{
	room_goto(MainLevel)
}


if place_meeting(x,y,oSpike)
{
	x = 61;
	y = 624;
	room_goto(MainLevel)
}
if score == 150
{
	room_goto(EndScreen)
}