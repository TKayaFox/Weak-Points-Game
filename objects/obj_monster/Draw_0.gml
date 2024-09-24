/// @description Draw monster
// You can write your code in this editor

draw_self()
draw_sprite_ext(current_monster.top, 0, 288, 0, 2, 2, 0, c_white, 1);
draw_sprite_ext(current_monster.face, 0, 288, -32, 2, 2, 0, c_white, 1);
draw_sprite_ext(current_monster.ears, 0, 288, -32, 2, 2, 0, c_white, 1);
