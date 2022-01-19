if(objPlayer.invicibility == 0){
	ScreenShake(2, 10);
	instance_destroy();
}

if(objPlayer.invicibility == 0){
	objPlayer.speed = choose(8, -8);
	alarm[1] = 5;
}
