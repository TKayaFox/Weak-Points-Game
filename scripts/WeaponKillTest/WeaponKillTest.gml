
/// @description Test combinations of face features to good weapon balance
//
function WeaponKillTest()
{

	//load weapon structures and monster parts
	parts = InitializeMonsterParts();
	InitializeWeapons(parts);

	var combinations = 0;
	var total_methods = 0;

	//For each combination of facial features
	
	//THIS CODE COMMENTED OUT IT NEEDS TO BE UPDATED TO USE THE NEW WAY OF HOLDING MONSTER PARTS
	
	//for (var h=0 ; h < array_length(Hair) ; h++)
	//{
	//		thisHair = Hair[h];
	//	for (var f=0 ; f < array_length(Face) ; f++)
	//	{
	//		thisFace = Face[f];
	//		for (var s=0 ; s < array_length(Skin) ; s++)
	//		{
	//			thisSkin = Skin[s];
	//			for (var e=0 ; e < array_length(Ears) ; e++)
	//			{
	//				thisEars = Ears[e];
	//				var mobString = ("Combination: " + thisHair + ", " + thisFace + ", " + thisSkin + ", " + thisEars);
	//				var killString = " Vulnerability:";
				
	//				var options = 0;
				
	//				//Check how many weapons can kill
	//				for (var w=0 ; w < array_length(Weapons) ; w++)
	//				{
	//					weapon = Weapons[w];
					
	//					//Determine if the monster can be defeated
	//					if (CanKill(thisHair,thisFace,thisSkin,thisEars,weapon))
	//					{
	//						options ++;
	//						killString = killString +" " + weapon.name;
	//					}
	//				}
				
	//				//Debug command show whether monster killable
	//				if (options >0)
	//				{
	//					combinations++;
	//					total_methods += options;
	//				}
	//				else
	//				{
	//					killString = (" INVINCIBLE");						
	//				}
				
	//				show_debug_message(string(combinations) + " " + mobString + killString + " " + string(options));
	//			}
	//		}
	//	}
	//}

	//average = combinations / total_methods;
	//show_debug_message("Mob Combinatons = " + string(combinations) + " Average usable weapons per mob = " + string(average));
	//var k = combinations;
}