// Sets up the base for all possible monster parts and stores them in an array.
function InitializeMonsterParts()
{
	//NOTE: Feel free to modify this so as needed, this is mostly made for balance testing for weapons.
	//		Let me know if changed though so i can update the BuildWeapons logic to match
	
	//Hair Types
	humanHair = 
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
	humanFace = 
	{
		sprite : ""
	};
	fangs = 
	{
		sprite : ""
	};
	demonFace = 
	{
		sprite : ""
	};
	
	//Ear types
	humanEar = 
	{
		sprite : ""
	};
	pointedEar = 
	{
		sprite : ""
	};
	earless = 
	{
		sprite : ""
	};
	
	//skin color values
	humanSkin = "";
	paleSkin = "";
	greenSkin = "";
	redSkin = "";
	
	
	//NOTE: Please do not mess with the order of each part, this is important for the balancing of the weapons
	//Make a struct holding parts arrays
	 _parts = 
	 {
		//Build an array of facial feature type
		hair : [humanHair,snakes,horns],
		face : [humanFace,fangs,demonFace],
		skin : [humanSkin,greenSkin,redSkin,paleSkin],
		ears : [humanEar,earless,pointedEar]
	 };
	return _parts
}