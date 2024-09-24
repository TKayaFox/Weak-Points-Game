
// set the initial y of object
if(initialized && initialY == 0) initialY = y;

// when colliding with mouse present one self
if(position_meeting(mouse_x,mouse_y,self)) presenting = true;
else presenting = false;

if(presenting){
	//Get the distance between current y pixel and the y pixel were trying to get to. Always less then y
	var distanceToEndPoint = y - (initialY - shiftHeight);
	//Divide the distancetoendpoint by shiftspeed to get the number of pixels to move
	var distanceToMove = distanceToEndPoint / shiftSpeed;
	//With the distanceToMove, subtract y by distanceToMove
	if(distanceToEndPoint < zeroInThreshold){
		y = (initialY - shiftHeight);
	}else y -= distanceToMove;
}else{ //Do everything above but opposite
	var distanceToEndPoint = initialY - y;
	var distanceToMove = distanceToEndPoint / shiftSpeed;
	if(distanceToEndPoint < zeroInThreshold) y = initialY;
	else y += distanceToMove;
}