//Constructs a singular monster, and ensures it is killable with at least one weapon
function BuildMonster()
{
	//Loop until the monster generated can be killed
	var monster = [_hair,_face,_ears,_skin];
	killable = false;
	
	while (!killable)
	{
		//Randomize all parts
		var _hair = irandom_range(0, array_length(obj_controller.parts.hair) - 1);
		var _face =  irandom_range(0, array_length(obj_controller.parts.face) - 1);
		var _skin =  irandom_range(0, array_length(obj_controller.parts.skin) - 1);
		var _ears =  irandom_range(0, array_length(obj_controller.parts.ears) - 1);
		
		//Check if Killable with any weapon
		for (var _weaponIndex=0 ; _weaponIndex < array_length(Weapons) ; _weaponIndex++)
		{
			var _weapon = Weapons[_weaponIndex];
					
			//Determine if the monster can be defeated
			if (CanKill(_hair,_face,_skin,_ears,_weapon))
			{
				killable = true;
			}
		}
	}
	return monster;
}