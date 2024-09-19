/// @description Test Face combinations for weapon kills

//enums for each monster part
Weapons = ["Stake","Mirror","Rock_Salt","Rosary","Pass","Boat"];


//Build an array of weapon types
Weapons = Build_Weapons(Hair,Face,Skin,Ears);




===========


Hair = ["human", "snakes", "horns"];
Face = ["human","fangs","demon"];
Skin = ["human", "green","red","white"];
Ears = ["human", "pointed", "none"];

var combinations = 0;

//For each combination of facial features
for (var h=0 ; h < array_length(Hair) ; h++)
{
		thisHair = Hair[h];
	for (var f=0 ; f < array_length(Face) ; f++)
	{
		thisFace = Face[f];
		for (var s=0 ; s < array_length(Skin) ; s++)
		{
			thisSkin = Skin[s];
			for (var e=0 ; e < array_length(Ears) ; e++)
			{
				thisEars = Ears[e];
				
				//Determine if the monster can be defeated
				if (Can_Kill(thisHair,thisFace,thisSkin,thisEars,Weapons))
				{
					combinations++;
				}
			}
		}
	}
}


var k = combinations;


