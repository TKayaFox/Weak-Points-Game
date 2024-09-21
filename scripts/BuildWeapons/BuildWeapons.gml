// Defines the different Weapon struct items
function BuildWeapons()
{
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
		name : "Rocksalt",
	    hair_immunity: "",
	    face_immunity: "fangs",
	    skin_immunity: "human",
	    ears_immunity: "pointed"
	};
	boat = 
	{
		name : "Boat Keys",
	    hair_immunity: "",
	    face_immunity: "",
	    skin_immunity: "",
	    ears_immunity: ""
	};
	noKill = 
	{
		name : "Release",
	    hair_immunity: "",
	    face_immunity: "",
	    skin_immunity: "",
	    ears_immunity: ""
	};
	
	//Return array of all weapon types
	weapons = [mirrorWpn,stakeWpn,charmWpn,saltWpn,boat,noKill];
	return weapons;
}