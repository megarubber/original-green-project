/// @description Typewriter de Encerramento

typerwriter += string_char_at(texto, letra);
letra += 1;
if(( letra - 1) != string_length(texto)){
	alarm[4] = 2;
}