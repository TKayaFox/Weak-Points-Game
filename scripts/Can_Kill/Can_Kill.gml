// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Can_Kill(hair,face,skin,ears,weapon)
{
	var can_kill = true;
	
    show_debug_message("          Combination:  Face: " + face + ", Hair: " + hair + ", Skin: " + skin + ", Ears: " + ears);
    
	//Check for any immunities against the weapon
	if ( weapon.hair_immunity == hair
		|| weapon.face_immunity == face
		|| weapon.skin_immunity == skin
		|| weapon.ears_immunity == ears)
	{
		can_kill =false;
	}
	
	return can_kill;
}