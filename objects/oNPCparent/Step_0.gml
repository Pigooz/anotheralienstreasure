if (instance_exists(oDialog)) exit;

if (instance_exists(oCharacter) && distance_to_object(oCharacter) < 8)
{
	can_talk = true;
	if (keyboard_check_pressed(input_key))
	{
		create_dialogue(dialog);
	}
}
else
{
	can_talk = false;
	
}