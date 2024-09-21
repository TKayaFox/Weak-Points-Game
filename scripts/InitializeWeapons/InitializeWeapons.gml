// Defines the different Weapon struct items
function InitializeWeapons(parts,spawnX,spawnY,gap)
{
	//Build Each weapon type and instantiate values
	
	mirrorWpn = instance_create_layer(x, y, "Instances", obj_stake);
		
	charmWpn = instance_create_layer(x, y, "Instances", obj_mirror);
		
	charmWpn = instance_create_layer(x, y, "Instances", obj_charms);
		
	saltWpn = instance_create_layer(x, y, "Instances", obj_rocksalt);
	
	//store in array
	weapons = [mirrorWpn,stakeWpn,charmWpn,saltWpn];
	
	
	//move weapons into position
	for (var _weaponIndex = 0; _weaponIndex < array_length(weapons); _weaponIndex++)
	{
		//Get the next weapon
		weapon = weapons[_weaponIndex];
	
		//move item to spawnX and spawnY
		weapon.x = spawnX;
		weapon.y = spawnY;
	
		//get next coordinates by adding sprite width and gap to current spawnX
		spawnX += gap + weapon.sprite_width;
	}
	
	//Return array of all weapon types
	return weapons;
}