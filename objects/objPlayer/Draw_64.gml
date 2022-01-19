if(global.finished == 1){
	objPlayer.timer += 1;
	timerfinished += 1;
	draw_set_font(font1);
	draw_set_color(c_lime);
	draw_text(500, 100, "Green");
	draw_set_color(c_black);
	draw_text(500, 160, "HAS PASSED");
	draw_set_font(font0);
	draw_text(500, 300, "Score:             ");
	draw_text(700, 300, global.points);
	draw_text(500, 400, "Health:             ");
	draw_text(700, 400, objPlayer.hp);
	draw_text(500, 500, "Coins:             ");
	draw_text(700, 500, global.moedas);
	global.finalpoints = (global.points + global.moedas*5 + objPlayer.hp*15);
	if(objPlayer.timer >= 150){
		draw_text(500, 600, "Pontos Finais:");
		draw_text(500, 650, global.finalpoints);
	}
	if(timerfinished >= 450 and room == level1 or room == level2){ 
		SlideTransition(TRANS_MODE.NORMAL);
	}
	if(timerfinished >= 450 and room == boss){
		SlideTransition(TRANS_MODE.END);
	}
}
