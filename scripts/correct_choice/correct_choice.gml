//Check if the player has successfully identified enough enemies
function correct_choice()
{
	//increment correct guesses
	
	//check for success
	if (obj_controller.win_target <= obj_controller.success)
	{
		//go to win screen
		room_goto(rm_menu);
	}
}