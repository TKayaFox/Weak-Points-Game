/// @description Draw monster
// You can write your code in this editor

draw_sprite_ext(spr_base, 0, x, y, 1, 1, 0, parts.skin, 1);
draw_sprite_ext(current_monster.top, 0, x, y-2, 1, 1, 0, c_white, 1);
draw_sprite_ext(current_monster.face, 0, x, y-13, 1, 1, 0, c_white, 1);
draw_sprite_ext(current_monster.ears, 0, x, y-11, 1, 1, 0, parts.skin, 1);