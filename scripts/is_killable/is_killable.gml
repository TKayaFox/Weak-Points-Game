// Checks if a monster combination can be killed by at least one weapon
function is_killable(_hair,_face,_skin,_ears,_weapons)
{
	var _killable = false;
	var _weapon_index=0
	
	//Check all weapon types (except boat)	
	while (_weapon_index < array_length(_weapons) && !_killable )
	{
		var _weapon = _weapons[_weapon_index];
					
		//Determine if the monster can be defeated
		if (can_kill(_hair,_face,_skin,_ears,_weapon))
		{
			_killable = true;
		}
		else
		{
			_weapon_index++;
		}
	}
	return _killable;
}