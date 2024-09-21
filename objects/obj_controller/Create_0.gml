/// @description Initialize Weapon and Monster data
//Weapon load values

//Get all Monster Parts and Weapons setup
parts = initialize_monster_parts();

//weapons load at controllers x and y, then are spread apart by "itemGap"
item_gap = 5;
spawn_x = x;
spawn_y = y;	

//Spawn all weapons in room starting from x and y then move into place
weapons = initialize_weapons(parts,spawn_x,spawn_y,item_gap);