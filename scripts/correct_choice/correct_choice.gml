//Check if the player has successfully identified enough enemies
function correct_choice()
{
	//increment correct guesses
	obj_controller.success ++;
	cthulu_chance += .12;
	
	//check for success
	if (obj_controller.win_target <= obj_controller.success)
	{
		//go to win screen
		room_goto(rm_endscreen);
	}
	else //draw a new monster
	{
		//Generate a random combination of parts
		parts = build_monster();
		obj_monster.current_monster = new Monster(parts.hair,parts.face,parts.skin,parts.ears);
	}
}