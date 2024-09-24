//Constructs a singular monster, and ensures it is killable with at least one weapon
function build_monster()
{
	//Loop until the monster generated can be killed
	killable = false;
	
	while (!killable)
	{
		var length = array_length(obj_controller.parts.hair);
		
		//Randomize all parts
		randomize();
		var _hair_index = irandom(array_length(obj_controller.parts.hair)-1);
		var _face_index =  irandom(array_length(obj_controller.parts.face)-1);
		var _skin_index =  irandom(array_length(obj_controller.parts.skin)-1);
		var _ears_index =  irandom(array_length(obj_controller.parts.ears)-1);
		var _hair = obj_controller.parts.hair[_hair_index];
		var _face = obj_controller.parts.face[_face_index];
		var _skin = obj_controller.parts.skin[_skin_index];
		var _ears = obj_controller.parts.ears[_ears_index];
		
		//Check if Killable with any weapon
		var _weapon_index=0
		
		while (_weapon_index < array_length(obj_controller.weapons) && !killable )
		{
			var _weapon = obj_controller.weapons[_weapon_index];
					
			//Determine if the monster can be defeated
			if (can_kill(_hair,_face,_skin,_ears,_weapon))
			{
				killable = true;
				 _monster = 
				 {
					 hair :_hair,
					 face : _face,
					 ears : _ears,
					 skin : _skin
				 };
			}
			else
			{
				_weapon_index++;
			}
		}
	}
	return _monster;
}