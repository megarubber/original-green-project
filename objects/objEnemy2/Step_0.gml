/// @description Ações do inimigo

if(global.pause and objPlayer.hp > 0 and room != introduction) exit;

var move = 0;
if(horSpeed == 0){
	horSpeed = 4*sign(objParede_Inimigo.x-x);
}
verSpeed += grav;

// colisão com a parede em X

if(place_meeting(x+horSpeed, y, objParede_Inimigo)){
	horSpeed = -horSpeed;
}

x += horSpeed;

if(place_meeting(x, y+verSpeed, objParede_Inimigo)){
	verSpeed = 0;
}

y += verSpeed;

// Animação

if(-horSpeed){
	image_xscale = -1;
}
else{
	image_xscale = 1;
}

if(hp <= 0){
	sprite_index = sprSmoke;
	timer += 1;
	if(timer >= 20){
		instance_destroy();
	}
}

if(room == introduction){
	image_xscale = 5;
	horSpeed = 3.5;
}
	