/// @description Atualização da Câmera

global.timer += delta_time/1000000;


// Destino

if(instance_exists(follow)){
	xTo = follow.x
	yTo = follow.y
}


// Atualizar para a posição do Player

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width - view_w_half);
y = clamp(y, view_h_half, room_height - view_h_half);

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);

shake_remain = max(0, shake_remain-((1/shake_length)*shake_magnitude));

// Atualizar Visualização

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

// Introdução

if(room == introduction){
	layer_set_visible("oi", false);
	if(timer1 >= 570){
		layer_set_visible("oi", true);
	}
	if(timer1 >= 570){
		timer2 += 1;
		// Apertando para baixo (Tecla S)
		if(timer2 >= 10 and menucursor_y == 200 and keyboard_check_released(ord("S")) and credits == 0){
			timer2 = 0;
			menucursor_y = 250;
		}
		if(timer2 >= 10 and menucursor_y == 250 and keyboard_check_released(ord("S")) and credits == 0){
			timer2 = 0;
			menucursor_y = 300;
		}
		if(timer2 >= 10 and menucursor_y == 300 and keyboard_check_released(ord("S")) and credits == 0){
			timer2 = 0;
			menucursor_y = 350;
		}
		if(timer2 >= 10 and menucursor_y == 350 and keyboard_check_released(ord("S")) and credits == 0){
			timer2 = 0;
			menucursor_y = 200;
		}
		// Apertando para baixo (Tecla W)
		if(timer2 >= 10 and menucursor_y == 200 and keyboard_check_released(ord("W")) and credits == 0){
			timer2 = 0;
			menucursor_y = 350;
		}
		if(timer2 >= 10 and menucursor_y == 350 and keyboard_check_released(ord("W")) and credits == 0){
			timer2 = 0;
			menucursor_y = 300;
		}
		if(timer2 >= 10 and menucursor_y == 300 and keyboard_check_released(ord("W")) and credits == 0){
			timer2 = 0;
			menucursor_y = 250;
		}
		if(timer2 >= 10 and menucursor_y == 250 and keyboard_check_released(ord("W")) and credits == 0){
			timer2 = 0;
			menucursor_y = 200;
		}
		// Comandos de transição
		//Sair do jogo
		if(menucursor_y == 350 and keyboard_check_pressed(vk_enter) and credits == 0){
			game_end();
		}
		// Créditos
		if(menucursor_y == 300 and keyboard_check_pressed(vk_enter) and credits == 0){
			credits = 1;
		}
		if(credits == 1 and keyboard_check_pressed(ord("Q"))){
			credits = 0;
		}
		if(menucursor_y == 250 and keyboard_check_pressed(vk_enter) and credits == 0){
			SlideTransition(TRANS_MODE.GOTO, options)
		}
		// Começar o jogo
		if(menucursor_y == 200 and keyboard_check_pressed(vk_enter) and credits == 0){
			SlideTransition(TRANS_MODE.GOTO, level1)
		}
	}
}

// Menu de options (não terminado)

if(room == options){
	timer4 += 1;
	// Apertando para baixo (Tecla S)
	if(timer4 >= 10 and menucursor_y2 == 250 and menucursor_x2 == 45 and keyboard_check_released(ord("S"))){
		timer4 = 0;
		menucursor_y2 = 450;
		menucursor_x2 = 45;
	}
	if(timer4 >= 10 and menucursor_y2 == 450 and menucursor_x2 == 45 and keyboard_check_released(ord("S"))){
		timer4 = 0;
		menucursor_y2 = 650;
		menucursor_x2 = 420;
	}
	if(timer4 >= 10 and menucursor_y2 == 650 and menucursor_x2 == 420 and keyboard_check_released(ord("S"))){
		timer4 = 0;
		menucursor_y2 = 250;
		menucursor_x2 = 45;
	}
	// Apertando para cima (Tecla W)
	if(timer4 >= 10 and menucursor_y2 == 650 and menucursor_x2 == 420 and keyboard_check_released(ord("W"))){
		timer4 = 0;
		menucursor_y2 = 450;
		menucursor_x2 = 45;
	}
	if(timer4 >= 10 and menucursor_y2 == 450 and menucursor_x2 == 45 and keyboard_check_released(ord("W"))){
		timer4 = 0;
		menucursor_y2 = 250;
		menucursor_x2 = 45;
	}
	if(timer4 >= 10 and menucursor_y2 == 250 and menucursor_x2 == 45 and keyboard_check_released(ord("W"))){
		timer4 = 0;
		menucursor_y2 = 650;
		menucursor_x2 = 420;
	}
// Comandos do menu de options
// Resolução
	if(timer4 >= 10 and room == options and menucursor_y2 == 250 and menucursor_x2 == 45 and keyboard_check_released(ord("D"))){
		timer4 = 0;
		menucursor_y2 = 270;
		menucursor_x2 = 370;
	}
	if(timer4 >= 10 and room == options and menucursor_y2 == 270 and menucursor_x2 == 370 and keyboard_check_released(ord("D"))){
		timer4 = 0;
		menucursor_y2 = 270;
		menucursor_x2 = 770;
	}
	if(timer4 >= 10 and room == options and menucursor_y2 == 270 and menucursor_x2 == 770 and keyboard_check_released(ord("D"))){
		timer4 = 0;
		menucursor_y2 = 270;
		menucursor_x2 = 370;
	}
	if(timer4 >= 10 and room == options and menucursor_y2 == 270 and menucursor_x2 == 770 and keyboard_check_released(ord("A"))){
		timer4 = 0;
		menucursor_y2 = 270;
		menucursor_x2 = 370;
	}
	if(timer4 >= 10 and room == options and menucursor_y2 == 270 and menucursor_x2 == 370 and keyboard_check_released(ord("A"))){
		timer4 = 0;
		menucursor_y2 = 250;
		menucursor_x2 = 45;
	}
	if(room == options and menucursor_y2 == 270 and menucursor_x2 == 370 and keyboard_check_released(vk_enter)){
		window_set_fullscreen(true);
	}
	if(room == options and menucursor_y2 == 270 and menucursor_x2 == 770 and keyboard_check_released(vk_enter)){
		window_set_fullscreen(false);
	}
	// Audio e volume
	if(room == options and menucursor_y2 == 450 and menucursor_x2 == 45 and keyboard_check_pressed(ord("K")) and xaudio < 950){
		global.volume += 0.10;
		xaudio += 70;
		audio_master_gain(global.volume);
	}
	if(room == options and menucursor_y2 == 450 and menucursor_x2 == 45 and keyboard_check_pressed(ord("L")) and xaudio > 250){
		global.volume -= 0.10;
		xaudio -= 70;
		audio_master_gain(global.volume);
	}
	// Controles
	if(room == options and menucursor_y2 == 650 and menucursor_x2 == 420 and keyboard_check_released(vk_enter)){
		controls = 1;
	}
	// Sair do Menu
	if(room == options and controls = 0 and keyboard_check_pressed(ord("Q"))){
		SlideTransition(TRANS_MODE.GOTO, introduction);
		audio_stop_sound(introductionmusic);
	}
}

// Pause

if(global.pause == 1){
	timer6 += 1;
	// Apertando para baixo (Tecla S)
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 250 and menucursor_xpause = 440 and keyboard_check_released(ord("S"))){
		timer6 = 0;
		menucursor_ypause = 300;
		menucursor_xpause = 400;
	}
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 300 and menucursor_xpause = 400 and keyboard_check_released(ord("S"))){
		timer6 = 0;
		menucursor_ypause = 350;
		menucursor_xpause = 310;
	}
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 350 and menucursor_xpause = 310 and keyboard_check_released(ord("S"))){
		timer6 = 0;
		menucursor_ypause = 400;
		menucursor_xpause = 370;
	}
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 400 and menucursor_xpause = 370 and keyboard_check_released(ord("S"))){
		timer6 = 0;
		menucursor_ypause = 250;
		menucursor_xpause = 440;
	}
	// Apertando para cima (Tecla W)
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 250 and menucursor_xpause = 440 and keyboard_check_released(ord("W"))){
		timer6 = 0;
		menucursor_ypause = 400;
		menucursor_xpause = 370;
	}
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 400 and menucursor_xpause = 370 and keyboard_check_released(ord("W"))){
		timer6 = 0;
		menucursor_ypause = 350;
		menucursor_xpause = 310;
	}
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 350 and menucursor_xpause = 310 and keyboard_check_released(ord("W"))){
		timer6 = 0;
		menucursor_ypause = 300;
		menucursor_xpause = 400;
	}
	if(controls2 == 0 and timer6 >= 10 and menucursor_ypause == 300 and menucursor_xpause = 400 and keyboard_check_released(ord("W"))){
		timer6 = 0;
		menucursor_ypause = 250;
		menucursor_xpause = 440;
	}
	// Comandos do menu de pause
	if(controls2 == 0 and global.pause == 1 and menucursor_ypause == 250 and menucursor_xpause == 440 and keyboard_check_released(vk_enter)){
		global.pause = 0;
	}
	if(controls2 == 0 and global.pause == 1 and menucursor_ypause == 300 and menucursor_xpause == 400 and keyboard_check_released(vk_enter)){
		controls2 = 1;
	}
	if(controls2 == 0 and global.pause == 1 and menucursor_ypause == 350 and menucursor_xpause == 310 and keyboard_check_released(vk_enter)){
		SlideTransition(TRANS_MODE.RESTART);
	}
	if(controls2 == 0 and global.pause == 1 and menucursor_ypause == 400 and menucursor_xpause == 370 and keyboard_check_released(vk_enter)){
		game_end();
	}
}

// Level 1, 2 e BOSS TEXTBOX

l += 0.5;
print = string_copy(str, 1, l);
if(l > string_length(str)+100) and (next < array_length_1d(strings)-1){
	l = 0;
	next++;
	if(next == array_length_1d(strings)-1) holdspace++;
}
str = strings[next];

//  Morte do player

if(global.dead == true and global.lifeplayer >= 1 and gameover == 0 and room == level1){
	audio_stop_sound(level1music);
}

if(global.dead == true and global.lifeplayer >= 1 and gameover == 0 and room == level2){
	audio_stop_sound(level2music);
}

if(global.dead == true and global.lifeplayer >= 1 and gameover == 0 and room == boss){
	audio_stop_sound(bossmusic);
}

if(global.lifeplayer <= 1 and objPlayer.hp <= 0 and deadgameover = true){
	gameover = 1;
}

if(objTransition.mode == TRANS_MODE.GOTO or objTransition.mode = TRANS_MODE.NORMAL and global.lifeplayer <= 1){
	gameover = 0;
}

// Pause

if(global.pause == 1){
	audio_pause_all();
}
else{
	audio_resume_all();
}

// Game Over

if(gameover == 1){
	instance_destroy(objParede);
	timergameover += 1;
	if(timergameover >= 550){
		SlideTransition(TRANS_MODE.RESTART);
	}
}

// Menu de options no pause
/*
if(optionspause == 1){
	timer7 += 1;
	// Apertando para baixo (Tecla S)
	if(timer7 >= 10 and menucursor_ypauseop == 180 and menucursor_xpauseop == 90 and keyboard_check_released(ord("S"))){
		timer7 = 0;
		menucursor_xpauseop = 90;
		menucursor_ypauseop = 350;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 350 and menucursor_xpauseop == 90 and keyboard_check_released(ord("S"))){
		timer7 = 0;
		menucursor_xpauseop = 390;
		menucursor_ypauseop = 540;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 540 and menucursor_xpauseop == 390 and keyboard_check_released(ord("S"))){
		timer7 = 0;
		menucursor_xpauseop = 90;
		menucursor_ypauseop = 180;
	}
	// Apertando para baixo (Tecla W)
	if(timer7 >= 10 and menucursor_ypauseop == 180 and menucursor_xpauseop == 90 and keyboard_check_released(ord("W"))){
		timer7 = 0;
		menucursor_xpauseop = 390;
		menucursor_ypauseop = 540;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 540 and menucursor_xpauseop == 390 and keyboard_check_released(ord("W"))){
		timer7 = 0;
		menucursor_xpauseop = 90;
		menucursor_ypauseop = 350;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 350 and menucursor_xpauseop == 90 and keyboard_check_released(ord("W"))){
		timer7 = 0;
		menucursor_xpauseop = 90;
		menucursor_ypauseop = 180;
	}
	// Comandos do menu de options do pause
	// Resolução
	if(timer7 >= 10 and menucursor_ypauseop == 180 and menucursor_xpauseop == 90 and keyboard_check_released(ord("D"))){
		timer7 = 0;
		menucursor_xpauseop = 430;
		menucursor_ypauseop = 180;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 180 and menucursor_xpauseop == 430 and keyboard_check_released(ord("D"))){
		timer7 = 0;
		menucursor_xpauseop = 750;
		menucursor_ypauseop = 180;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 180 and menucursor_xpauseop == 750 and keyboard_check_released(ord("D"))){
		timer7 = 0;
		menucursor_xpauseop = 430;
		menucursor_ypauseop = 180;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 180 and menucursor_xpauseop == 750 and keyboard_check_released(ord("A"))){
		timer7 = 0;
		menucursor_xpauseop = 430;
		menucursor_ypauseop = 180;
	}
	if(timer7 >= 10 and menucursor_ypauseop == 180 and menucursor_xpauseop == 430 and keyboard_check_released(ord("A"))){
		timer7 = 0;
		menucursor_xpauseop = 90;
		menucursor_ypauseop = 180;
	}
	if(optionspause == 1 and menucursor_ypauseop == 180 and menucursor_xpauseop == 90 and keyboard_check_released(vk_enter)){
		window_set_fullscreen(true);
	}
	if(optionspause == 1 and menucursor_ypauseop == 180 and menucursor_xpauseop == 90 and keyboard_check_released(vk_enter)){
		window_set_fullscreen(false);
	}
	// Audio e volume
	if(optionspause == 1 and menucursor_ypauseop == 450 and menucursor_xpauseop == 45 and keyboard_check_pressed(ord("K")) and xaudio < 950){
		global.volume += 0.10;
		xaudio2 += 70;
		audio_master_gain(global.volume);
	}
	if(optionspause == 1 and menucursor_ypauseop == 450 and menucursor_xpauseop == 45 and keyboard_check_pressed(ord("L")) and xaudio > 250){
		global.volume -= 0.10;
		xaudio2 -= 70;
		audio_master_gain(global.volume);
	}
	// Controles
	if(optionspause == 1 and menucursor_ypauseop == 540 and menucursor_xpauseop == 390 and keyboard_check_released(vk_enter)){
		controls = 1;
	}
	// Sair do Menu
	if(optionspause == 1 and controls = 0 and keyboard_check_pressed(ord("Q"))){
		optionspause = 0;
	}
}

*/

// Loading

if(global.loading == 1 and room == level1){
	timerloading += 1;
	if(timerloading >= 200){
		SlideTransition(TRANS_MODE.GOTO, level1);
	}
	if(timerloading >= 215){
		global.loading = 0;
		timerloading = 0;
	}
}

if(global.loading == 1 and room == level2){
	timerloading += 1;
	if(timerloading >= 200){
		SlideTransition(TRANS_MODE.GOTO, level2);
	}
	if(timerloading >= 215){
		global.loading = 0;
		timerloading = 0;
	}
}

if(global.loading == 1 and room == boss){
	timerloading += 1;
	if(timerloading >= 200){
		SlideTransition(TRANS_MODE.GOTO, boss);
	}
	if(timerloading >= 215){
		global.loading = 0;
		timerloading = 0;
	}
}

if(global.loading == 1 and room == level1 and global.finished == 1){
	timerloading += 1;
	if(timerloading >= 200){
		SlideTransition(TRANS_MODE.GOTO, level2);
	}
	if(timerloading >= 215){
		global.loading = 0;
		timerloading = 0;
	}
}

if(global.loading == 1 and room == level2 and global.finished == 1){
	timerloading += 1;
	if(timerloading >= 200){
		SlideTransition(TRANS_MODE.GOTO, boss);
	}
	if(timerloading >= 215){
		global.loading = 0;
		timerloading = 0;
	}
}

if(global.loading == 1 and room == boss and global.finished == 1){
	timerend += 1;
	if(timerend >= 200){
		SlideTransition(TRANS_MODE.RESTART);
	}
	if(timerend >= 215){
		global.end = 0;
		timerloading = 0;
	}
}
