/// @description Draw monster
// You can write your code in this editor
if (is_cthulu)
{
	draw_sprite_ext(spr_cthulu, 0, 383, 63, 1, 1, 0,c_white, 1);	
}
else
{
	//For ghost: if skin = "Ghost" show transparent white otherwise show skin color on sprite
	if (current_monster.skin = c_black)
	{
		transparency = .6;
		color_overlay = c_white;
	}
	else
	{
		transparency = 1;
		color_overlay = current_monster.skin;
	}
	
	draw_sprite_ext(spr_base, 0, 383, 63, 1, 1, 0, color_overlay , transparency);
	draw_sprite_ext(current_monster.hair, 0, 383, 63, 1, 1, 0,  c_white, transparency);
	draw_sprite_ext(current_monster.face, 0, 384, 52, 1, 1, 0,  c_white, 1);
	draw_sprite_ext(current_monster.ears, 0, 384, 54, 1, 1, 0, color_overlay, transparency);
}