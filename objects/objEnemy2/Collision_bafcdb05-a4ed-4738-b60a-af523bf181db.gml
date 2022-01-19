if(objPlayer.invicibility == 0){
	ScreenShake(2, 10);
}

if(image_xscale == -1){
	if(objPlayer.invicibility == 0){
		objPlayer.speed = -8;
		alarm[1] = 5;
	}
}
else{
	if(objPlayer.invicibility == 0){
		objPlayer.speed = 8;
		alarm[1] = 5;
	}
}
