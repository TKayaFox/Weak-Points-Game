//Constructs a singular monster, and ensures it is killable with at least one weapon
function build_monster()
{
	//Check if spawning Cthulu (% chance)
	obj_monster.is_cthulu = (obj_monster.cthulu_chance >= random(1));
	
	//If Cthulu reset cthulu chance (obj_mosnter has seperate logic in draw event for drawing cthulu)
	if (obj_monster.is_cthulu)
	{
		obj_monster.cthulu_chance = .01; //1% chance of spawning again immediately
	}
	
	// Otherwise randomize a new monster
	else
	{
		//Loop until the monster generated can be killed
		killable = false;
	
		while (!killable)
		{
			var length = array_length(obj_controller.parts.hair);
		
			_monster = randomize_parts();
			
			//Determine if the monster can be defeated
			killable = is_killable(_monster.hair,_monster.face,_monster.skin,_monster.ears,obj_controller.weapons);			
		}
	
		//Build a new monster and store in obj_monster
		obj_monster.current_monster = _monster
	}
}

// Randomize a combination of all parts
function randomize_parts()
{
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
	_monster = 
	{
		hair :_hair,
		face : _face,
		skin : _skin,
		ears : _ears
	};
		
	return _monster;
}