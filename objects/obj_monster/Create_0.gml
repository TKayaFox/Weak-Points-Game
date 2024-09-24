/// @description Declares monster types and stuff

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

vampire_base = new Monster(spr_hair_human, spr_face_vampire, c_red, spr_ears_pointed);
demon_base = new Monster(spr_hair_horns, spr_face_demon, c_blue, spr_ears_human);
gorgon_base = new Monster(spr_hair_snakes, spr_face_demon, c_green, spr_ears_empty);
human_base = new Monster(spr_hair_human, spr_face_human, c_maroon, spr_ears_human);

randomize();
monster_bases = [vampire_base, demon_base, gorgon_base, human_base];
var random_base = irandom_range(0, array_length(monster_bases) - 1);

current_monster = monster_bases[random_base];