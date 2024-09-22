//Constructs a singular monster, and ensures it is killable with at least one weapon
function build_monster()
{
	//Loop until the monster generated can be killed
	var _monster = [];
	killable = false;
	
	while (!killable)
	{
		//Randomize all parts
		var _hair = irandom_range(0, array_length(obj_controller.parts.hair) - 1);
		var _face =  irandom_range(0, array_length(obj_controller.parts.face) - 1);
		var _skin =  irandom_range(0, array_length(obj_controller.parts.skin) - 1);
		var _ears =  irandom_range(0, array_length(obj_controller.parts.ears) - 1);
		
		//Check if Killable with any weapon
		for (var _weapon_index=0 ; _weapon_index < array_length(weapons) ; _weapon_index++)
		{
			var _weapon = weapons[_weapon_index];
					
			//Determine if the monster can be defeated
			if (can_kill(_hair,_face,_skin,_ears,_weapon))
			{
				killable = true;
				 monster = [_hair,_face,_ears,_skin]
			}
		}
	}
	return _monster;
}