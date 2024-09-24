///Checks if a monster is human (all human traits)
function is_human (_hair,_face,_skin,_ears)
{
	human = false;
	
	//Check for any immunities against the weapon
	if (_hair == spr_hair_human
		&& _face == spr_face_human
		&& _ears == spr_ears_human)
	{
		human =true;
	}
	
	return human;
}