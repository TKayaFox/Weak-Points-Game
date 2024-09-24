///Check if a specific weapon can kill a specific monster
function can_kill(_hair,_face,_skin,_ears,_weapon)
{
	var _killable = true;
	
	//Check for any immunities against the weapon
	if ( _weapon.hair_immunity = _hair
		|| _weapon.face_immunity = _face
		|| _weapon.skin_immunity = _skin
		|| _weapon.ears_immunity = _ears)
	{
		_killable =false;
	}
	
	return _killable;
}