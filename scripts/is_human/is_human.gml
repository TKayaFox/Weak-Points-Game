///Checks if a monster is human (all human traits)
function is_human (_hair,_face,_skin,_ears)
{
	human = false;
	
	//Check for any immunities against the weapon
	if ( weapon.hair_immunity == _hair
		&& weapon.face_immunity == _face
		&& weapon.skin_immunity == _skin
		&& weapon.ears_immunity == _ears)
	{
		human =true;
	}
	
	return human;
}