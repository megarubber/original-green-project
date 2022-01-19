with (objPlayer){
	global.moedas = global.moedas + 1;
	global.points = global.points + 5;
	destroyed = true;
	audio_play_sound(coinsound, 4, false);
}

instance_destroy();
