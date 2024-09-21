/// @description Initialize Weapon and Monster data
//Weapon load values

//Get all Monster Parts and Weapons setup
parts = InitializeMonsterParts();

//weapons load at controllers x and y, then are spread apart by "itemGap"
itemGap = 5;
spawnX = x;
spawnY = y;	

//Spawn all weapons in room starting from x and y then move into place
weapons = InitializeWeapons(parts);

for (var _weaponIndex = 0; _weaponIndex < array_length(weapons); _weaponIndex++)
{
	//Get the next weapon
	weapon = weapons[_weaponIndex];
	
	//move item to spawnX and spawnY
	weapon.x = spawnX;
	weapon.y = spawnY;
	
	//get next coordinates by adding sprite width and gap to current spawnX
	spawnX += itemGap + weapon.sprite_width;
}