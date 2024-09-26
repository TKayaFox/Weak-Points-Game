keyLeftClick = mouse_check_button_pressed(mb_left);

if(keyLeftClick && position_meeting(mouse_x,mouse_y,self)){
	//mouse is on the right page
	if(mouse_x > x && image_index != image_number - 1) image_index++;
	
	//mouse is on the left page
	if(mouse_x < x && image_index != 0) image_index--;
	
}