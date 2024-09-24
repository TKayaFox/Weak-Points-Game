/// @description Initialize Weapon and Monster data
//Weapon load values

//Get all Monster Parts and Weapons setup
parts = initialize_monster_parts();

//weapons load at controllers x and y, then are spread apart by "itemGap"
item_gap = -25;
spawn_x = 32;
spawn_y = 416;	

//Spawn all weapons in room starting from x and y then move into place
weapons = initialize_weapons(spawn_x,spawn_y,item_gap,"Weapons");