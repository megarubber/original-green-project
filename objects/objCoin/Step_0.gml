if(keyboard_check_pressed(vk_up)){
	global.moedas = global.moedas + 1;
}

if(global.moedas >= 100){
	global.lifeplayer = global.lifeplayer + 1;
	global.moedas = 0;
}