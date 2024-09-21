///Check if a specific weapon can kill a specific monster
function CanKill(hair,face,skin,ears,weapon)
{
	var can_kill = true;
	
	//Check for any immunities against the weapon
	if ( weapon.hair_immunity = hair
		|| weapon.face_immunity = face
		|| weapon.skin_immunity = skin
		|| weapon.ears_immunity = ears)
	{
		can_kill =false;
	}
	
	return can_kill;
}