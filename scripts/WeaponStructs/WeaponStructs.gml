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
		name : "mirror",
	    hair_immunity: "horns",
	    face_immunity: "demon",
	    skin_immunity: "",
	    ears_immunity: "human"
	};
	stakeWpn = 
	{
		name: "stake",
	    hair_immunity: "snakes",
	    face_immunity: "human",
	    skin_immunity: "red",
	    ears_immunity: ""
	};
	charmWpn = 
	{
		name : "charm set",
	    hair_immunity: "human",
	    face_immunity: "",
	    skin_immunity: "green",
	    ears_immunity: "none"
	};
	saltWpn = 
	{
		name : "rock salt",
	    hair_immunity: "",
	    face_immunity: "fangs",
	    skin_immunity: "human",
	    ears_immunity: "pointed"
	};
	Weapons = [mirrorWpn,stakeWpn,charmWpn,saltWpn];
}