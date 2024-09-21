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