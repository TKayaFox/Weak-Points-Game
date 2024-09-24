// creates the sprite
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//sets the text settings
draw_set_font(font_normal);
draw_set_color(c_white);

draw_text(x + border,y + border, "You are an employee at a monster disposal company, in charge of identifying monster types.");
draw_text(x + border, y + border + space*2, "Take a look at the monster, and use your book to figure out what it is.");
draw_text(x + border, y + border + space*4, "Then, choose the best weapon to kill the monster.");
draw_text(x + border, y + border + space*6, "Don't pick the wrong weapon! Their blood will be on your hands.");
draw_text(x + border, y + border + space*8, "Press SPACE to return to menu.");
