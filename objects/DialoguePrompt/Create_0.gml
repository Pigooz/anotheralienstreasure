self.active = false;
self.notification_sprite = spr_Exclamation;
self.notification_instance = noone;
self.notification_sprite_width = sprite_get_width(self.notification_sprite);
self.notification_sprite_height = sprite_get_height(self.notification_sprite);

function show_dialogue_box()
{
	var player = instance_find(oCharacter, 0);
	
	player.talking = true;
	self.hide_notification();
	
	instance_create_layer(x, y, layer, DialogueBox, { dialogue: self.dialogue, portrait: self.portrait });
}

function show_notification()
{
	if(self.notification_instance != noone)
	{
		return;
	}
	
	var notification_x = x + (sprite_width / 2.0) - (self.notification_sprite_width / 2);
	var notification_y = y - self.notification_sprite_height;
	var instance = instance_create_layer(notification_x, notification_y, layer, EmptyObject, {
		sprite_index: self.notification_sprite,
	});
	
	self.notification_instance = instance;
}

function hide_notification()
{
	if(self.notification_instance == noone)
	{
		return;
	}
	
	instance_destroy(self.notification_instance);
	self.notification_instance = noone;
	self.active = false;
}