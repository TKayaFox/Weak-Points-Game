// Defines the different Weapon struct items
function initialize_weapons(_spawn_x,_spawn_y,_gap,_layer)
{
	//Build Each weapon type and instantiate values
	_stake_wpn = instance_create_layer(x, y, _layer, obj_stake);
	_mirror_wpn = instance_create_layer(x, y, _layer, obj_mirror);
	_charm_wpn = instance_create_layer(x, y, _layer, obj_charms);
	_salt_wpn = instance_create_layer(x, y, _layer, obj_rocksalt);
	_pass_wpn = instance_create_layer(x, y, _layer, obj_pass);
	
	//store in array
	_weapons = [_mirror_wpn,_stake_wpn,_charm_wpn,_salt_wpn,_pass_wpn];
	
	
	//move weapons into position
	for (var _weapon_index = 0; _weapon_index < array_length(_weapons); _weapon_index++)
	{
		//Get the next weapon
		_weapon = _weapons[_weapon_index];
	
		//move item to spawnX and spawnY
		_weapon.x = _spawn_x;
		_weapon.y = _spawn_y;
	
		//get next coordinates by adding sprite width and gap to current spawnX
		_spawn_x += _gap + _weapon.sprite_width;
		
		if(_weapon_index >= array_length(_weapons) - 1){
			with(obj_weapon){
				initialized = true;
			}
		}
	}
	
	//Return array of all weapon types
	return _weapons;
}