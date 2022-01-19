/// @description Colisão
if(invicibility == 0){	
	invicibility = 1;
	alarm[1] = 180;
	alarm[2] = 1;
	hp -= 15;
	audio_play_sound(damagesound, 10, false);
}