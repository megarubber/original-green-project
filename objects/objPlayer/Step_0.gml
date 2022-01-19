/// @description Ações do Player	

if(global.pause and hp > 0) exit;

//Inputs

moveRight = keyboard_check(ord("D"));
moveLeft = -keyboard_check(ord("A"));
jump_held = keyboard_check(ord("W"));
jump = keyboard_check_pressed(ord("W"));
shoot = mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_space);
pause = keyboard_check_pressed(ord("P"));

// Configuração do Controle
	
move = moveLeft + moveRight;

horSpeed = move * walkSpeed;
if(verSpeed < 10) verSpeed += grav;

//Pulos

if(jump and place_meeting(x, y+1, objParede)){
	verSpeed = jump * -jumpSpeed
}

if(verSpeed < 0 and !jump_held) verSpeed = max(verSpeed, -jumpSpeed/2)

// Colisão no X

if(place_meeting(x+horSpeed, y, objParede)){
	while(!place_meeting(x+sign(horSpeed), y, objParede)){
		x += sign(horSpeed);
	}
	horSpeed = 0;
}

x += horSpeed;

// Colisão no Y

if(place_meeting(x, y+verSpeed, objParede)){
	while(!place_meeting(x, y+sign(verSpeed), objParede)){
		y += sign(verSpeed);
	}
	verSpeed = 0;
}

y += verSpeed;


// Arma Seguindo Player
objGun.x = x;
objGun.y = y;

// Atirar
if(room != options and room != introduction and objCamera.gameover = 0 and global.dead = false and objCamera.deadgameover = false){
	if(shoot and objGun.sprite_index == sprGun){
		instance_create_layer(objGun.x, objGun.y, "Player", objBullet);
		ScreenShake(2, 10);
		audio_play_sound(shootsound, 5, false);
	}
}

// Animação

if(!place_meeting(x, y+1, objParede)){
	sprite_index = sprPlayerjump;
	image_speed = 0;
	if(verSpeed > 0) image_index = 1; else image_index = 0;
}
else{
	image_speed = 1;
	if(horSpeed == 0){
		sprite_index = sprPlayeridle;
	}
	else{
		sprite_index = sprPlayerrun;
	}
}

//if(x < window_views_mouse_get_x()){
	//image_xscale = 1;
//}
//else{
	//image_xscale = -1;
//}
if(horSpeed != 0) image_xscale = sign(horSpeed);

// Morte

if(hp <= 0){
	global.dead = true;
	sprite_index = sprPlayerdeath;
	grav = -0.3;
	instance_destroy(objBullet);
}

if(y >= room_height){
	hp = 0;
}

	
if(hp <= 0 and global.lifeplayer == 1){
	objCamera.deadgameover = true;
	sprite_index = sprPlayerdeath;
	grav = -0.3;
	instance_destroy(objBullet);
}

// Finished
/*
if(global.finished == 1 and room == level1){
	timerfinished += 1;
	if(timerfinished >= 450){
		SlideTransition(TRANS_MODE.GOTO, level2);
	}
}

if(global.finished == 1 and room == level2){
	timerfinished += 1;
	if(timerfinished >= 450){
		SlideTransition(TRANS_MODE.GOTO, boss);
	}
}

if(global.finished == 1 and room == boss){
	timerfinished += 1;
}
