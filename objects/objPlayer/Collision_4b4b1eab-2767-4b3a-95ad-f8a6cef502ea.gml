if(sprite_index != sprPlayerdeath){
	objCamera.follow = objSign;
	global.finished = 1;
	audio_play_sound(finishedsound, 0, false);
	if(room == level1){
		audio_stop_sound(level1music);
	}
	if(room == level2){
		audio_stop_sound(level2music);
	}
	if(room == boss){
		audio_stop_sound(bossmusic);
	}
	instance_destroy(other);
}