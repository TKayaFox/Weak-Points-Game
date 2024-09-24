// Sets up the base for all possible monster parts and stores them in an array.
function initialize_monster_parts()
{
	//NOTE: Feel free to modify this so as needed, this is mostly made for balance testing for weapons.
	//		Let me know if changed though so i can update the BuildWeapons logic to match
	
	//Hair Types
	human_hair = spr_hair_human;
	snakes = spr_hair_snakes;
	horns = spr_hair_horns;
	
	//Face Types
	human_face = spr_face_human;
	vampire_face = spr_face_vampire;
	demon_face = spr_face_demon;
	
	//Ear types
	human_ear = spr_ears_human;
	pointed_ear = spr_ears_pointed;
	earless = spr_ears_empty;
	
	//skin color values
	human_skin = #F4DFD6;
	pale_skin = #FDF9F7;
	green_skin = #a4e49a;
	red_skin = #c95a5a;
	
	
	//NOTE: Please do not mess with the order of each part, this is important for the balancing of the weapons
	//Make a struct holding parts arrays
	 _parts = 
	 {
		//Build an array of facial feature type
		hair : [human_hair,snakes,horns],
		face : [human_face,vampire_face,demon_face],
		skin : [human_skin,green_skin,red_skin,pale_skin],
		ears : [human_ear,earless,pointed_ear]
	 };
	return _parts
}