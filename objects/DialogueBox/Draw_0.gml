var screen_width = 1500 * 12;
var screen_height = 1500 * 12;

draw_set_color(c_black);
draw_rectangle(
	400, screen_height - 400, 
	screen_width - 400, screen_height - 700, 
	false
);

draw_sprite(
	self.portrait, 0, 
	screen_width - 700, screen_height - 700
);

draw_set_color(c_white);
draw_set_font(fnt_menu);
draw_text(
	500, screen_height - 800,
	self.current_line
);