	randomize();
	var random_room = irandom(array_length(global.room_list) -1);
	var chosen_room = global.room_list[random_room];
	room_goto(chosen_room)