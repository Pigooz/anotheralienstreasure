function load_dialogue(filename)
{
	var file_buffer = buffer_load(filename);
	var file_contents = buffer_read(file_buffer, buffer_string);
	file_contents = json_decode(file_contents);
	
	buffer_delete(file_buffer);
	
	return ds_map_find_value(file_contents, "lines");
}

function next_line()
{
	if(not self.has_next_line())
	{
		return undefined;
	}
	
	self.line_index += 1;
	return ds_list_find_value(self.lines, self.line_index);
}

function has_next_line()
{
	return self.line_index < self.line_count - 1;
}


self.lines = self.load_dialogue(self.dialogue);
self.line_index = 0;
self.line_count = ds_list_size(lines);
self.current_line = ds_list_find_value(self.lines, self.line_index);