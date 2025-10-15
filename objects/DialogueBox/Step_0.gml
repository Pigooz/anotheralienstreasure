if(keyboard_check_released(vk_space))
{

	if(self.has_next_line())
	{
		self.current_line = self.next_line();
	}
	else
	{
		instance_destroy(self);
		var player = instance_find(oCharacter, 0);
		player.talking = false;
	}
}