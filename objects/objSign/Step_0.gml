/// @description Gravidade da placa

verSpeed += grav;

if(place_meeting(x, y+verSpeed, objParede_Inimigo)){
	verSpeed = 0;
}

if(place_meeting(x, y+verSpeed, objParede)){
	verSpeed = 0;
}


y += verSpeed;

