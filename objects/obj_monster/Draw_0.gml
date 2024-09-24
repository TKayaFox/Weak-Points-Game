/// @description Draw monster
// You can write your code in this editor
if (is_cthulu)
{
	draw_sprite_ext(spr_cthulu, 0, 383, 63, 1, 1, 0, parts.skin, 1);	
}
else
{
	draw_sprite_ext(spr_base, 0, 383, 63, 1, 1, 0, parts.skin, 1);
	draw_sprite_ext(current_monster.top, 0, 383, 63, 1, 1, 0, c_white, 1);
	draw_sprite_ext(current_monster.face, 0, 384, 52, 1, 1, 0, c_white, 1);
	draw_sprite_ext(current_monster.ears, 0, 384, 54, 1, 1, 0, parts.skin, 1);
}