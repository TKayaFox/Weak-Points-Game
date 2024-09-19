///Checks if a monster is human (all human traits)
function IsHuman (hair,face,skin,ears)
{
	human = false;
	
	//Check for any immunities against the weapon
	if ( weapon.hair_immunity == hair
		|| weapon.face_immunity == face
		|| weapon.skin_immunity == skin
		|| weapon.ears_immunity == ears)
	{
		can_kill =true;
	}
	
	return human;
}