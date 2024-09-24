/// @description Attempt to use weapon on click (release)

//get Monster information
_monster = obj_monster.current_monster;
_hair = _monster.hair;
_face = _monster.face;
_skin = _monster.skin;
_ears = _monster.ears;

//Check if the monster can be killed (pass self as the weapon type)
if (is_human(_hair,_face,_skin,_ears))
{
	//Success
	correct_choice();
}
else
{
	//Failure
	game_over();
}