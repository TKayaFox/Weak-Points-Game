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

current_monster = vampire_base;