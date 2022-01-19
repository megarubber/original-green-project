/// @description Receber Ponto X & Y do Mouse

if(global.pause) exit;

image_angle = point_direction(x, y, mouse_x, mouse_y);

if(x < mouse_x){
	image_yscale = 1;
}
else{
	image_yscale = -1;
}

if(keyboard_check_pressed(ord("Y"))){
	sprite_index = sprGun;
	image_index = 0;
}

if(keyboard_check_pressed(ord("U"))){
	sprite_index = sprGun;
	image_index = 1;
}