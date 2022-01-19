/// @description Barra de vida

draw_self();
draw_healthbar(x-155, y-305, x+155, y-289, hp, c_black, c_red, c_green, 0, true, false);

if!(ishit) draw_self();

if(ishit){
	gpu_set_fog(true, c_red, 0, 0);
	draw_self();
	gpu_set_fog(false, c_red, 0, 0);
}