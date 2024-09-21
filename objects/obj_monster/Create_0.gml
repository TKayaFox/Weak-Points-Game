/// @description Declares monster types and stuff
// You can write your code in this editor


// _top = Sprites for the top of the head hat/hair
// _face = Sprite to give face
// _skin = Skin color
// _ears = Sprite for ears
function Monster(_top, _face, _skin, _ears) constructor
{
	top = _top;
	face = _face;
	skin = _skin;
	ears = _ears;
}

vampire_base = new Monster(spr_test1, spr_test2, c_red, spr_test4);
demon_base = new Monster(spr_test4, spr_test3, c_blue, spr_test1);

randomize();
monster_bases = [vampire_base, demon_base];
var random_base = irandom_range(0, array_length(monster_bases) - 1);

current_monster = monster_bases[random_base];