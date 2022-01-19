/// @description GUI

// Mudar de Arma
if(room == level1 or room == level2 or room == boss){
	if(objGun.image_index == 0){
		draw_set_font(font0);
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_sprite(sprGun, 0, 950, 620);
		draw_text(850, 620, "AK-47");
		draw_set_alpha(0.5);
		draw_sprite(sprGun, 1, 950, 650);
		draw_text(900, 650, "M4");
	}
	if(objGun.image_index == 0 and keyboard_check_pressed(ord("Y"))){
		draw_set_alpha(1);
		draw_set_font(font0);
		draw_set_color(c_black);
		draw_sprite(sprGun, 1, 950, 650);
		draw_text(900, 650, "M4");
		draw_set_alpha(0.5);
		draw_sprite(sprGun, 0, 950, 620);
		draw_text(850, 620, "AK-47");
	}
	if(objGun.image_index == 1){
		draw_set_font(font0);
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_sprite(sprGun, 1, 950, 650);
		draw_text(900, 650, "M4");
		draw_set_alpha(0.5);
		draw_sprite(sprGun, 0, 950, 620);
		draw_text(850, 620, "AK-47");
	}
	if(objGun.image_index == 1 and keyboard_check_pressed(ord("U"))){
		draw_set_font(font0);
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_sprite(sprGun, 0, 950, 620);
		draw_text(850, 620, "AK-47");
		draw_set_alpha(0.5);
		draw_sprite(sprGun, 1, 950, 650);
		draw_text(900, 650, "M4");
	}
}


// Começo da tela

if(room == level1){
	draw_set_alpha(1);
	timerbefore += 1;
	timertext += 1;
	draw_set_color(c_black);
	draw_rectangle(-2, rectangle_y1, 1033, rectangle_y2, false);
	draw_set_font(font0);
	draw_set_color(c_lime);
	draw_text(500, 600, textname);
	draw_set_color(c_white);
	draw_text(500, 640, print);
	if(timertext >= 360){
		textname = "Green:"
	}
	if(timertext >= 610){
		textname = "Assistente:"
	}
	if(timertext >= 950){
		textname = "Green:"
	}
	if(timertext >= 1200){
		textname = " "
	}
	if(timertext >= 1210){
		rectangle_y1 += 5;
		rectangle_y2 += 5;
	}
	if(timerbefore >= 1250){
		draw_set_color(c_black);
		draw_set_font(font0);
		text_to_write = "*************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************Level 1 - No Alto da Florestinha";
		tempo += 1;
		draw_text(textx, texty, typerwriter_out);
		if(tempo >= 350 and !global.pause){
			textx = -782
		}
	}
}

if(room == level2){
	draw_set_alpha(1);
	strings[0] = "Green, identificamos o traidor! O DR.BLUE\nestá roubando a cor verde!";
	strings[1] = "FILHO DA ... Esquece! O que\nencontrarei no caminho?";
	strings[2] = "Acho que nada! Estarei aqui\nte ajudando se precisar.\nToma cuidado ai em cima!";
	strings[3] = "Valeu pela ajuda amigao! #SQN";
	strings[4] = " "
	timerbefore += 1;
	timertext += 1;
	draw_set_color(c_black);
	draw_rectangle(-2, rectangle_y1, 1033, rectangle_y2, false);
	draw_set_font(font0);
	draw_set_color(c_lime);
	draw_text(500, 600, textname);
	draw_set_color(c_white);
	draw_text(500, 640, print);
	if(timertext >= 330){
		textname = "Green:"
	}
	if(timertext >= 640){
		textname = "Assistente:"
	}
	if(timertext >= 1000){
		textname = "Green:"
	}
	if(timertext >= 1250){
		textname = " "
	}
	if(timertext >= 1260){
		rectangle_y1 += 5;
		rectangle_y2 += 5;
	}
	if(timerbefore >= 1310){
		draw_set_color(c_black);
		draw_set_font(font0);
		text_to_write = "*******************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************Level 2 - O Castelo Everest";
		tempo += 1;
		draw_text(textx, texty, typerwriter_out);
		if(tempo >= 350 and !global.pause){
			textx = -782
		}
	}
}

if(room == boss){
	draw_set_alpha(1);
	strings[0] = "Eai! Encontrou algo aí em cima Green?";
	strings[1] = "Nada! Esse dr ai esta meio desatualizado!\nEsta muito facil!";
	strings[2] = "'Eu e a minha grande boca'.";
	strings[3] = "So digo uma coisa...\nBoa Sorte!\nTACA-LE PAU GREEN!!!";
	strings[4] = " "
	timerbefore += 1;
	timertext += 1;
	draw_set_color(c_black);
	draw_rectangle(-2, rectangle_y1, 1033, rectangle_y2, false);
	draw_set_font(font0);
	draw_set_color(c_lime);
	draw_text(500, 600, textname);
	draw_set_color(c_white);
	draw_text(500, 640, print);
	if(timertext >= 280){
		textname = "Green:"
	}
	if(timertext >= 620){
		textname = "Green:"
	}
	if(timertext >= 850){
		textname = "Assistente:"
	}
	if(timertext >= 1150){
		textname = " "
	}
	if(timertext >= 1150){
		rectangle_y1 += 5;
		rectangle_y2 += 5;
	}
	if(timerbefore >= 1200){
		draw_set_color(c_black);
		draw_set_font(font0);
		text_to_write = "************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************************Level 3 - O Capeta em cima das nuvens";
		tempo += 1;
		draw_text(textx, texty, typerwriter_out);
		if(tempo >= 350 and !global.pause){
			textx = -782
		}
	}
}

// Pause

if(global.pause and objPlayer.hp > 0 and room != introduction and room != options){
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_alpha(1);
	draw_set_color(c_silver);
	draw_rectangle(280, 500, 720, 220, 0);
	draw_set_color(c_green);
	draw_rectangle(260, 220, 740, 110, 0);
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_text(500, 160, "Jogo Pausado");
	draw_set_font(fontMenu);
	draw_set_color(c_white);
	draw_text(menucursor_xpause, menucursor_ypause, ">");
	if(menucursor_ypause == 250 and menucursor_xpause = 440){
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_text(500, 250, optionpause[0]);
		draw_set_color(c_black);
		draw_text(500, 300, optionpause[1]);
		draw_text(500, 350, optionpause[2]);
		draw_text(500, 400, optionpause[3]);
	}
	if(menucursor_ypause == 300 and menucursor_xpause = 400){
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_text(500, 300, optionpause[1]);
		draw_set_color(c_black);
		draw_text(500, 250, optionpause[0]);
		draw_text(500, 350, optionpause[2]);
		draw_text(500, 400, optionpause[3]);
	}
	if(menucursor_ypause == 350 and menucursor_xpause = 310){
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_text(500, 350, optionpause[2]);
		draw_set_color(c_black);
		draw_text(500, 250, optionpause[0]);
		draw_text(500, 300, optionpause[1]);
		draw_text(500, 400, optionpause[3]);
		draw_set_color(c_red);
		draw_set_font(font0);
		draw_text(500, 550, "Atencao, ao voltar para o menu principal,\npor ser uma demo, nao vai\nsalvar nenhum progresso\ndo jogo.");
	}
	if(menucursor_ypause == 400 and menucursor_xpause = 370){
		draw_set_alpha(1);
		draw_set_color(c_white);
		draw_text(500, 400, optionpause[3]);
		draw_set_color(c_black);
		draw_text(500, 250, optionpause[0]);
		draw_text(500, 300, optionpause[1]);
		draw_text(500, 350, optionpause[2]);
		draw_set_color(c_red);
		draw_set_font(font0);
		draw_text(500, 550, "Atencao, ao sair do jogo,\npor ser uma demo, nao vai\nsalvar nenhum progresso\ndo jogo.");
	}
}
	// Menu de options no pause
/*	if(optionspause == 1){
		draw_set_color(c_black);
		draw_set_alpha(0.5);
		draw_rectangle(0, 0, room_width, room_height, 0);
		draw_set_alpha(1);
		draw_set_color(c_gray);
		draw_rectangle(20, 50, 990, 740, false);
		draw_set_color(c_black);
		draw_rectangle(30, 60, 980, 720, false);
		draw_set_font(fontMenu);
		draw_set_color(c_white);
		draw_text(menucursor_xpauseop, menucursor_ypauseop, ">");
		draw_set_color(c_yellow);
		draw_text(850, 60, "Voltar[Q]");
		draw_set_color(c_blue);
		draw_set_font(font1);
		draw_text(500, 90,"Options");
		if(menucursor_xpauseop == 90 and menucursor_ypauseop == 180){
			draw_set_font(fontMenu);
			draw_set_color(c_white);
			draw_text(200, 180, menupauseoptions[0]);
			draw_set_color(c_gray);
			draw_text(150, 350, menupauseoptions[1]);
			draw_text(500, 540, menupauseoptions[2]);
			draw_set_color(c_blue);
			draw_text(550, 180, menupausesuboptions[0]);
			draw_text(850, 180, menupausesuboptions[1]);
		}
		if(menucursor_xpauseop == 90 and menucursor_ypauseop == 350){
			draw_set_font(fontMenu);
			draw_set_color(c_white);
			draw_text(150, 350, menupauseoptions[1]);
			draw_set_color(c_gray);
			draw_text(200, 180, menupauseoptions[0]);
			draw_text(500, 540, menupauseoptions[2]);
			draw_text(550, 180, menupausesuboptions[0]);
			draw_text(850, 180, menupausesuboptions[1]);
			draw_set_color(c_black);
			draw_rectangle(250, 350, 950, 380, false);
			draw_set_color(c_aqua);
			draw_rectangle(250, 350, xaudio2, 380, false);
			draw_set_color(c_white);
			draw_text(500, 300, "     K = Aumenta o som / L = Diminui o som");
		}
		if(menucursor_xpauseop == 390 and menucursor_ypauseop == 540){
			draw_set_font(fontMenu);
			draw_set_color(c_white);
			draw_text(500, 540, menupauseoptions[2]);
			draw_set_color(c_gray);
			draw_text(200, 180, menupauseoptions[0]);
			draw_text(150, 350, menupauseoptions[1]);
			draw_text(550, 180, menupausesuboptions[0]);
			draw_text(850, 180, menupausesuboptions[1]);
		}
		if(menucursor_xpauseop == 430 and menucursor_ypauseop == 180){
			draw_set_font(fontMenu);
			draw_set_color(c_white);
			draw_text(550, 180, menupausesuboptions[0]);
			draw_set_color(c_gray);
			draw_text(200, 180, menupauseoptions[0])
			draw_text(150, 350, menupauseoptions[1]);
			draw_text(500, 540, menupauseoptions[2]);
			draw_text(850, 180, menupausesuboptions[1]);
		}
		if(menucursor_xpauseop == 750 and menucursor_ypauseop == 180){
			draw_set_font(fontMenu);
			draw_set_color(c_white);
			draw_text(850, 180, menupausesuboptions[1]);
			draw_set_color(c_gray);
			draw_text(200, 180, menupauseoptions[0])
			draw_text(150, 350, menupauseoptions[1]);
			draw_text(500, 540, menupauseoptions[2]);
			draw_text(550, 180, menupausesuboptions[0]);
		}
	}
}
*/

// Contadores

// Criar Fonte

draw_set_font(font0);

// Criar Moeda, vida e pontos sprite
if(room != introduction and room != options){
	draw_set_alpha(1);
	draw_sprite(sprCoin, 0, 750, 30);
	draw_sprite(sprLife, 1, 900, 30);
	draw_set_color(c_black);
	draw_text(550, 20,"Score:");
}


// Criar contador (Moedas)
if(room != introduction and room != options){
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_text(800, 20, global.moedas);
}

// Criar contador (Vidas)
if(room != introduction and room != options){
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_text(950, 20, global.lifeplayer);
}

// Criar contador (Pontos)
if(room != introduction and room != options){
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_text(550, 60, global.points);
}

// Criar Barra de vida
if(room != introduction and room != options){
	draw_set_alpha(1);
	draw_healthbar(12, 19, 290, 42, objPlayer.hp, c_black, c_red, c_lime, 0, true, true);
}
// Morte do Player

if(global.dead == true and gameover == 0 and room == level1){
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_set_color(c_red);
	draw_set_alpha(1);
	draw_text(508, 360,"Green Morreu!");
	draw_text(508, 400,"Aperte a tecla R para voltar");
	draw_set_color(c_black);
	if(keyboard_check_pressed(ord("R"))){
		SlideTransition(TRANS_MODE.NORMAL);
		global.dead = false;
		global.lifeplayer -= 1;
	}
}

if(global.dead == true and gameover == 0 and room == level2){
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_set_color(c_red);
	draw_set_alpha(1);
	draw_text(508, 360,"Green Morreu!");
	draw_text(508, 400,"Aperte a tecla R para voltar");
	draw_set_color(c_black);
	if(keyboard_check_pressed(ord("R"))){
		SlideTransition(TRANS_MODE.NORMAL);
		global.dead = false;
		global.lifeplayer -= 1;
	}
}

if(global.dead == true and gameover == 0 and room == boss){
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(font0);
	draw_set_color(c_red);
	draw_set_alpha(1);
	draw_text(508, 360,"Green Morreu!");
	draw_text(508, 400,"Aperte a tecla R para voltar");
	draw_set_color(c_black);
	if(keyboard_check_pressed(ord("R"))){
		SlideTransition(TRANS_MODE.NORMAL);
		global.dead = false;
		global.lifeplayer -= 1;
	}
}

// Game Over

if(gameover == 1){
	draw_set_color(c_black);
	draw_set_alpha(0.7);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fontgameover);
	draw_set_color(c_red);
	draw_set_alpha(1);
	draw_text(508, 360,"GAME OVER");
}

//Tela de inicio

if(room == introduction){
	timer1 += 1;
	comeback = 0;
	draw_set_color(c_black);
	draw_rectangle(-2, rectangle_y1, 1033, rectangle_y2, false);
	draw_rectangle(-2, rectangle_y3, 1033, rectangle_y4, false);
	if(timer1 >= 50 and timer1 < 230){
		draw_set_font(font0);
		draw_set_color(c_white);
		draw_text(600, textintro_y1, "created by");
		draw_text(600, textintro_y2, "Guilherme Samuel");
	}
	if(timer1 >= 230 and timer1 < 380){
		textintro_y1 = -240;
		textintro_y2 = -240;
	}
	if(timer1 >= 380 and timer1 < 530){
		draw_set_font(font0);
		draw_set_color(c_white);
		draw_text(45, textintro_y3, "made in");
		draw_text(45, textintro_y4, "Game Maker: Studio 2");
	}
	if(timer1 >= 530 and timer1 < 540){
		textintro_y3 = -240;
		textintro_y4 = -240;
	}
	if(timer1 >= 540 and timer1 < 575){
	rectangle_y1 += 5;
	rectangle_y2 += 5;
	rectangle_y3 -= 5;
	rectangle_y4 -= 5;
	
	}
	if(timer1 >= 570){		
		draw_set_font(fontMenu);
		draw_set_color(c_white);
		draw_text(350, 25, "Copyright (c) 2018 Jooj Co. Ltd.");
		draw_text(780, menucursor_y, ">");
		if(menucursor_y == 200){
			draw_set_color(c_white);
			draw_text(810, 200, option[0]);
			draw_set_color(c_black);
			draw_text(810, 250, option[1]);
			draw_text(810, 300, option[2]);
			draw_text(810, 350, option[3]);
		}
		if(menucursor_y == 250){
			draw_set_color(c_white);
			draw_text(810, 250, option[1]);
			draw_set_color(c_black);
			draw_text(810, 200, option[0]);
			draw_text(810, 300, option[2]);
			draw_text(810, 350, option[3]);
		}
		if(menucursor_y == 300){
			draw_set_color(c_white);
			draw_text(810, 300, option[2]);
			draw_set_color(c_black);
			draw_text(810, 200, option[0]);
			draw_text(810, 250, option[1]);
			draw_text(810, 350, option[3]);
		}
		if(menucursor_y == 350){
			draw_set_color(c_white);
			draw_text(810, 350, option[3]);
			draw_set_color(c_black);
			draw_text(810, 200, option[0]);
			draw_text(810, 250, option[1]);
			draw_text(810, 300, option[2]);
		}
		// Créditos
		if(credits == 1){
			draw_set_color(c_black);
			draw_set_alpha(0.5);
			draw_rectangle(0, 0, room_width, room_height, 0);
			draw_set_alpha(1);
			draw_rectangle(30, 50, 980, 720, false);
			draw_set_font(font0);
			draw_set_color(c_lime);
			draw_text(40, 60, "Criado por:\nGuilherme Samuel");
			draw_text(40, 180, "Programado em:\nGame Maker: Studio 2");
			draw_text(40, 300, "Graficos modificados do jogo:\nGreen Madness, Minecraft.");
			draw_text(40, 420, "Musicas e efeitos sonoros dos jogos:\nMega Man 2, Mega Man 3, Pac-Man, Sonic &\nKnuckles, Super Mario World.");
			draw_text(40, 540, "Ajuda com algo:\nSEI LA...");
			draw_text(40, 660, "Suporte:\nde ninguem :)");
			draw_set_color(c_yellow);
			draw_text(750, 60, "Voltar[Q]");
		}
	}
}

//Tela de Options

if(room == options){
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_font(font1);
	draw_set_color(c_blue);
	draw_set_alpha(1);
	draw_text(400, 90,"Options");
	draw_set_color(c_white);
	draw_set_font(fontMenu);
	draw_text(menucursor_x2, menucursor_y2, ">");
	if(menucursor_y2 == 250 and menucursor_x2 == 45){
		draw_set_color(c_white);
		draw_text(75, 250, menuoptions[0]);
		draw_set_color(c_black);
		draw_text(75, 450, menuoptions[1]);
		draw_text(450, 650, menuoptions[2]);
		draw_set_color(c_blue);
		draw_text(400, 270, menusuboptions[0]);
		draw_text(800, 270, menusuboptions[1]);
		draw_set_color(c_yellow);
		draw_text(800, 30, menuoptions[3]);
	}
	if(menucursor_y2 == 450 and menucursor_x2 == 45){
		draw_set_color(c_white);
		draw_text(75, 450, menuoptions[1]);
		draw_set_color(c_black);
		draw_text(75, 250, menuoptions[0]);
		draw_text(450, 650, menuoptions[2]);
		draw_text(400, 270, menusuboptions[0]);
		draw_text(800, 270, menusuboptions[1]);
		draw_set_color(c_black);
		draw_rectangle(250, 460, 950, 490, false);
		draw_set_color(c_aqua);
		draw_rectangle(250, 460, xaudio, 490, false);
		draw_set_color(c_black);
		draw_text(200, 380, "      K = Aumenta o som / L = Diminui o som");
		draw_set_color(c_yellow);
		draw_text(800, 30, menuoptions[3]);
	}
	if(menucursor_y2 == 650 and menucursor_x2 == 420){
		draw_set_color(c_white);
		draw_text(450, 650, menuoptions[2]);
		draw_set_color(c_black);
		draw_text(75, 250, menuoptions[0]);
		draw_text(75, 450, menuoptions[1]);
		draw_text(400, 270, menusuboptions[0]);
		draw_text(800, 270, menusuboptions[1]);
		draw_set_color(c_yellow);
		draw_text(800, 30, menuoptions[3]);
	}
	if(menucursor_y2 == 270 and menucursor_x2 == 370){
		draw_set_color(c_white);
		draw_text(400, 270, menusuboptions[0]);
		draw_set_color(c_black);
		draw_text(75, 250, menuoptions[0]);
		draw_text(75, 450, menuoptions[1]);
		draw_text(450, 650, menuoptions[2]);
		draw_text(800, 270, menusuboptions[1]);
		draw_set_color(c_yellow);
		draw_text(800, 30, menuoptions[3]);
	}
	if(menucursor_y2 == 270 and menucursor_x2 == 770){
		draw_set_color(c_white);
		draw_text(800, 270, menusuboptions[1]);
		draw_set_color(c_black);
		draw_text(75, 250, menuoptions[0]);
		draw_text(75, 450, menuoptions[1]);
		draw_text(450, 650, menuoptions[2]);
		draw_text(400, 270, menusuboptions[0]);
		draw_set_color(c_yellow);
		draw_text(800, 30, menuoptions[3]);
	}
}

if(controls == 1){
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_alpha(1);
	draw_rectangle(30, 50, 980, 720, false);
	draw_set_font(font0);
	draw_set_color(c_lime);
	draw_text(40, 60, "Pular:\nW");
	draw_text(40, 180, "Correr:\nA, D");
	draw_text(40, 300, "Atirar:\nBotao Esquerdo do Mouse ou Espaco");
	draw_text(40, 420, "Pausar:\nP");
	draw_text(40, 540, "Trocar Sprite da Arma:\nY, U");
	draw_text(40, 660, "Confirmar:\nEnter");
	draw_set_color(c_yellow);
	draw_text(750, 60, "Voltar[Q]");
}

if(controls == 1 and keyboard_check_pressed(ord("Q"))){
	controls = 0;
}

if(controls2 == 1){
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_alpha(1);
	draw_rectangle(30, 50, 980, 720, false);
	draw_set_font(font0);
	draw_set_color(c_lime);
	draw_text(115, 60, "Pular:");
	draw_text(100, 100, "W");
	draw_text(125, 180, "Correr:");
	draw_text(100, 210, "A, D");
	draw_text(125, 300, "Atirar:");
	draw_text(450, 340, "Botao Esquerdo do Mouse ou Espaco");
	draw_text(125, 420, "Pausar:");
	draw_text(100, 460, "P");
	draw_text(285, 540, "Trocar Sprite da Arma:");
	draw_text(100, 580, "Y, U");
	draw_text(150, 660, "Confirmar:");
	draw_text(100, 690, "Enter");
	draw_set_color(c_yellow);
	draw_text(850, 60, "Voltar[Q]");
}

if(controls2 == 1 and keyboard_check_pressed(ord("Q"))){
	controls2 = 0;
}

// Loading

if(global.loading == 1){
	text_loading = choose_text;
	audio_stop_all();
	draw_set_color(c_teal);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_color(c_lime);
	draw_set_font(font0);
	draw_text(500, 675, "Carregando...");
	draw_sprite(sprLoading, all, 800, 500);
	if(text_loading == 0){
		draw_text(500, 210, "O que e um pontinho verde em\num aeroporto internacional?\nUm GREENgo.");
	}
	if(text_loading == 1){
		draw_text(500, 210, "O que e um pontinho verde\nlutando em um portatil?\num GREENninja.");
	}
	if(text_loading == 2){
		draw_text(500, 210, "'Na Uniao Sovietica,\no Green controla voce.'");
	}
	if(text_loading == 3){
		draw_text(500, 210, "Se existe o Green, deve existir\no Red e o Blue para fazer\no trio RGB.");
	}
	if(text_loading == 4){
		draw_text(500, 210, "Sabe qual o Super-Heroi\nfavorito do Green?\no Hulk.\n(pq ele e verde u.u)");
	}
	if(text_loading == 5){
		draw_text(500, 210, "GREEEEEENNN\nPOOOOWWWEEEERRRR!!!");
	}
	if(text_loading == 6){
		draw_text(500, 210, "Pra um jogo de encanadores bigodudos,\nao Green, sempre a\npreferencia ao 2 Player.");
	}
	if(text_loading == 7){
		draw_text(500, 210, "Aperte Alt + F13,\n e fique rico.");
	}
	if(text_loading == 8){
		draw_text(500, 210, "'Eu prefiro morrer do que\nperder a vida.'");
	}
	if(text_loading == 9){
		draw_text(500, 210, "Conhece a piada do viajante?\nQuando ele voltar\nele te conta.");
	}
	if(text_loading == 10){
		draw_text(500, 210, "Um navio estava voando,\nai as rodas dele estorou,\nquantas melancias\nsobram?");
	}
}

if(global.end == 1){
	draw_set_color(c_olive);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_text(500, 120, "PARABENS! Voce completou a demo do jogo\nEsse jogo foi criado no Game Maker:\nStudio 2 e feito como TCC para a\nSuper Geeks.\nObrigado por jogar!\n\n\n\n\n\nPior Final :3");
}