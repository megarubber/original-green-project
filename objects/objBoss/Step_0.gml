/// @description Ações do inimigo

if(global.pause and objPlayer.hp > 0) exit;

if(horSpeed == 0){
	horSpeed = 4*sign(objParede_Inimigo.x-x);
}

// colisão com a parede em X

if(place_meeting(x+horSpeed, y, objParede_Inimigo)){
	horSpeed = -horSpeed;
}

x += horSpeed;

// Animação

if(-horSpeed){
	image_xscale = -4;
}
else{
	image_xscale = 4;
}

if(horSpeed){
	verSpeed = verSpeed * 5;
}

// Atirar
if(shooting  == false){
	shooting = true;
	instance_create_layer(x, y, "Boss", objBulletEnemy);
	alarm[0] = choose(50, 60, 70);
}

// Fase 1
if(hp <= 75){
	sprite_index = sprBossWitchdamage;
	time += 1;
	if(time >= 700){
		sprite_index = sprBossWitchrun;
		hp += 20;
		time = 0;
	}
}

// Fase 2

if(hp <= 50){
	time = 0;
	sprite_index = sprBossWitchrun;
	if(image_xscale == -4){
		horSpeed = -10;
	}
	else{
		horSpeed = 10;
	}
}

// Fase 3

if(hp <= 25){
	sprite_index = sprBossWitchdamage;
	time += 1;
	if(time >= 700){
		sprite_index = sprBossWitchrun;
		hp += 20;
		time = 0;
	}
}

// Fase 4

if(hp <= 10){
	ishit = true;
	alarm[1] = 3;
	sprite_index = sprBossWitchrun;
		if(image_xscale == -4){
		horSpeed = -15;
	}
	else{
		horSpeed = 15;
	}
}

if(hp <= 0){
	sprite_index = sprBossWitchdamage;
	instance_destroy(objParede_Inimigo);
	instance_destroy(objBulletEnemy);
}

if(objPlayer.hp <= 0){
	instance_destroy(objBulletEnemy);
}
