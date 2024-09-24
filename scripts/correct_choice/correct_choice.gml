//Check if the player has successfully identified enough enemies
function correct_choice()
{
	//increment correct guesses
	obj_controller.success ++;
	obj_monster.cthulu_chance += .05;
	
	//check for success
	if (obj_controller.win_target <= obj_controller.success)
	{
		//go to win screen
		room_goto(rm_endscreen);
	}
	 //draw a new monster
	else
	{
		//Generate a random combination of parts
		parts = build_monster();
	}
}