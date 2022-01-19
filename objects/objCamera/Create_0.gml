/// @description Variáveis e Set up da Câmera

cam = view_camera[0];
follow = objPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;
tempo = 0;
controls = 0;
controls2 = 0;
gameover = 0;
deadgameover = false;
global.end = 0;
comeback = 0;
timergameover = 0;

// Variável Pausar
global.pause = 0;


// Typewriter (Começo da tela)

text_to_write = "";
typerwriter_out = "";
i = 1;
alarm[2] = 1;
textx = 500;
texty = 110;
timerbefore = 0;
textx2 = 500;
texty2 = 110;

// Timers e variáveis da introdução e options

timer1 = 0;
timer2 = 0;
timer3 = 0;
timer4 = 0;
timer5 = 0;
timer6 = 0;
timer7 = 0;
textintro_y1 = 420;
textintro_y2 = 450;
textintro_y3 = 420;
textintro_y4 = 450;
rectangle_y1 = 590;
rectangle_y2 = 771;
rectangle_y3 = -15;
rectangle_y4 = 156;
timernextlevel = 0;
xaudio = 950;
xaudio2 = 950;

option[0] = "Start Game";
option[1] = "Options";
option[2] = "Credits";
option[3] = "Quit";



menuoptions[0] = "Resolucao";
menuoptions[1] = "Audio";
menuoptions[2] = "Controles";
menuoptions[3] = "Voltar[Q]";
menusuboptions[0] = "FullScreen";
menusuboptions[1] = "Windowed";


menucursor = ">";
menucursor_y = 200;
menucursor_y2 = 250;
menucursor_x2 = 45;
menucursor_ypause = 250;
menucursor_xpause = 440;
menucursor_ypauseop = 180;
menucursor_xpauseop = 90;
credits = 0;
ativar = 0;

// Textbox 1 

str = "";
print = "";

l = 0;
next = 0;

holdspace = 0;

strings[0] = "Green, corre atras do 'misterioso' que vai\ntentar destruir a cor da florestinha!";
strings[1] = "Como eu irei fazer isso?";
strings[2] = "Mano! SE VIRA! Temos que recuperar a \ncor verde o mais rapido\npossivel!";
strings[3] = "Pode deixar COMIGO!";
strings[4] = " "

timertext = 0;

textname = "Assistente:";

// Músicas
if(room == introduction){
	audio_stop_sound(level1music);
	audio_stop_sound(level2music);
	audio_stop_sound(bossmusic);
	audio_play_sound(introductionmusic, 0, true);
}

if(room == level1){
	audio_stop_sound(introductionmusic);
	audio_stop_sound(level2music);
	audio_stop_sound(bossmusic);
	audio_play_sound(level1music, 0, true);
}

if(room == level2){
	audio_stop_sound(introductionmusic);
	audio_stop_sound(level1music);
	audio_stop_sound(bossmusic);
	audio_play_sound(level2music, 0, true);
}

if(room == boss){
	audio_stop_sound(introductionmusic);
	audio_stop_sound(level1music);
	audio_stop_sound(level2music);
	audio_play_sound(bossmusic, 0, true);
}

// Typewriter (Começo da tela)

texto = "";
typerwriter = "";
letra = 1;
alarm[4] = 1;

// Pause

optionpause[0] = "Back";
optionpause[1] = "Controls";
optionpause[2] = "Back to Menu Start";
optionpause[3] = "Quit the Game";

/*
menupauseoptions[0] = "Resolucao";
menupauseoptions[1] = "Audio";
menupauseoptions[2] = "Controles";
menupauseoptions[3] = "Voltar[Q]";
menupausesuboptions[0] = "FullScreen";
menupausesuboptions[1] = "Windowed";

optionspause = 0;
*/

// Timer Global

global.timer = 0;

// Loading

text_loading = 0;
choose_text = choose(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
timerloading = 0;
timerend = 0;