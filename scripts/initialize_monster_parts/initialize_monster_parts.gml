// Sets up the base for all possible monster parts and stores them in an array.
function initialize_monster_parts()
{
	//NOTE: Feel free to modify this so as needed, this is mostly made for balance testing for weapons.
	//		Let me know if changed though so i can update the BuildWeapons logic to match
	
	//Hair Types
	human_hair = 
	{
		sprite : ""
	};
	snakes = 
	{
		sprite : ""
	};
	horns = 
	{
		sprite : ""
	};
	
	//Face Types
	human_face = 
	{
		sprite : ""
	};
	fangs = 
	{
		sprite : ""
	};
	demon_face = 
	{
		sprite : ""
	};
	
	//Ear types
	human_ear = 
	{
		sprite : ""
	};
	pointed_ear = 
	{
		sprite : ""
	};
	earless = 
	{
		sprite : ""
	};
	
	//skin color values
	human_skin = "";
	pale_skin = "";
	green_skin = "";
	red_skin = "";
	
	
	//NOTE: Please do not mess with the order of each part, this is important for the balancing of the weapons
	//Make a struct holding parts arrays
	 _parts = 
	 {
		//Build an array of facial feature type
		hair : [human_hair,snakes,horns],
		face : [human_face,fangs,demon_face],
		skin : [human_skin,green_skin,red_skin,pale_skin],
		ears : [human_ear,earless,pointed_ear]
	 };
	return _parts
}