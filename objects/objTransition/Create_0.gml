/// @description Variáveis e setup

w = display_get_gui_width() + 50;
h = display_get_gui_height() + 50;
h_half = h * 0.5;

enum TRANS_MODE{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO,
	NORMAL,
	END
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;


