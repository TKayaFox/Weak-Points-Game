// Defines the different Weapon struct items
function WeaponStructs()
{
	//Build an array of facial feature type
	Hair = ["human", "snakes", "horns"];
	Face = ["human","fangs","demon"];
	Skin = ["human", "green","red","white"];
	Ears = ["human", "pointed", "none"];

	mirrorWpn = 
	{
	    hair_immunity: "horns",
	    face_immunity: "demon",
	    skin_immunity: "",
	    ears_immunity: "human"
	};
	stakeWpn = 
	{
	    hair_immunity: "snakes",
	    face_immunity: "human",
	    skin_immunity: "red",
	    ears_immunity: ""
	};
	charmWpn = 
	{
	    hair_immunity: "human",
	    face_immunity: "",
	    skin_immunity: "green",
	    ears_immunity: "none"
	};
	saltWpn = 
	{
	    hair_immunity: "",
	    face_immunity: "fangs",
	    skin_immunity: "human",
	    ears_immunity: "pointed"
	};
	Weapons = [mirrorWpn,stakeWpn,charmWpn,saltWpn];
}