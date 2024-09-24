/// Draw text box
draw_set_font(font_pixel);

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

// Draw text
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < op_length; i++) {
	var _c = c_white;
	if pos == i {_c = c_yellow};
	draw_text_color(x + op_border, y + op_border + op_space*i + 10, option[i], _c, _c, _c, _c, 1);
}

// use the options
if accept_key {
	switch(pos) {
	
		// restart game
		case 0:
			room_goto(rm_menu);
			break;
		
		// end game
		case 1:
			game_end();
			break;	
	}
}