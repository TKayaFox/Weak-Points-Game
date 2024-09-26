//Constructs a singular monster, and ensures it is killable with at least one weapon
function build_monster()
{
	//reset random seed
	randomize();
	
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
		var _weapons = obj_controller.weapons;
		var _parts = obj_controller.parts;
	
		//Generate a random weapon
		_weapon_index = irandom(array_length(_weapons)-1);
		_weapon = _weapons[_weapon_index];
		
		//Generate a monster that is killable by that weapon
		_monster = monster_from_weapon(_weapon,_parts);
	
		//Build a new monster and store in obj_monster
		obj_monster.current_monster = _monster
	}
}

// Input a weapon type, and output a monster killable by that weapon type
function monster_from_weapon(_weapon,_parts)
{
	//attempt to generate parts of each type until it is killable with target weapon	
	//store all arrays for readability
	var _hair_arr =  obj_controller.parts.hair;
	var _face_arr =  obj_controller.parts.face;
	var _skin_arr =  obj_controller.parts.skin;
	var _ear_arr =  obj_controller.parts.ears;
	
	//generate a random part for each type
	var _hair = randomize_part(_weapon, _hair_arr);
	var _face = randomize_part(_weapon, _face_arr);
	var _skin = randomize_part(_weapon, _skin_arr);
	var _ears = randomize_part(_weapon, _ear_arr);
	
	//build monster from parts and return
	_monster = 
	{
		hair :_hair,
		face : _face,
		skin : _skin,
		ears : _ears
	};
	
	return _monster;
}

function randomize_part(_weapon,_parts)
{
	var _part = noone;
	var _killable = false;
	
	//prevent infinite loop
    var _attempts = 0; 
	_max_attempts = 5;
	
	//attempt to loop until found a part (or reached max attempts)
	while (!_killable && _attempts < _max_attempts)
	{
		//grab a random part
		var _part_index = irandom(array_length(_parts)-1);
		_part = _parts[_part_index];
		
		//Check for any immunities against the weapon
		if ( _weapon.hair_immunity != _part
			&& _weapon.face_immunity != _part
			&& _weapon.skin_immunity != _part
			&& _weapon.ears_immunity != _part)
		{
			_killable =true;
		}
		else
		{
			_part = noone;
		}
		
		_attempts++;
	}
		
	return _part;
}