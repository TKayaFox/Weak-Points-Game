/// @description Test Face combinations for weapon kills

//load weapon structures
WeaponStructs();

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
				show_debug_message("Combination:  Hair " + thisHair + " Face: " + thisFace + " Skin " + thisSkin + ", Ears " + thisEars);
				
				var options =0;
				
				//Check how many weapons can kill
				for (var w=0 ; w < array_length(Weapons) ; w++)
				{
					weapon = Weapons[w];
					
					//Determine if the monster can be defeated
					if (CanKill(thisHair,thisFace,thisSkin,thisEars,weapon) || IsHuman(thisHair,thisFace,thisSkin,thisEars))
					{
						options ++;
					}
				}
				
				//Debug command show whether monster killable
				if (options >0)
				{
					show_debug_message("Killable");
					combinations++;
				}
				else
				{
					show_debug_message("INVINCIBLE");						
				}
			}
		}
	}
}


var k = combinations;


