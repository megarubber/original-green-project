with (objPlayer){
	global.lifeplayer = global.lifeplayer + 1;
	audio_play_sound(powerupsound, 4, false);
}

instance_destroy();
