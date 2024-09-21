// Sets up the base for all possible monster parts and stores them in an array.
function BuildMonsterParts()
{
	//NOTE: Feel free to modify this so as needed, this is mostly made for balance testing for weapons.
	//		Let me know if changed though so i can update the BuildWeapons logic to match
	
	//Make a struct holding parts arrays
	 var _parts = 
	 {
		//Build an array of facial feature type
		hair : ["human", "snakes", "horns"],
		face : ["human","fangs","demon"],
		skin : ["human", "green","red","white"],
		ears : ["human", "pointed", "none"]
	 };
	return _parts
}