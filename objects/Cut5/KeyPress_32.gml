if keyboard_check_pressed(vk_space)
{
	key_press_count++;
}

if key_press_count == 4
{
	room_goto(MainLevel)
}