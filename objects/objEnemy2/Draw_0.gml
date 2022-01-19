/// @description Barra de vida

draw_self();
draw_healthbar(x-25, y-45, x+25, y-39, hp, c_black, c_red, c_green, 0, true, false);

// Hit Flash

if!(ishit) draw_self();

if(ishit){
	gpu_set_fog(true, c_white, 0, 0);
	draw_self();
	gpu_set_fog(false, c_white, 0, 0);
}