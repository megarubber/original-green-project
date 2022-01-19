/// @desc SlideTransition(mode, targetroom);
/// @arg mode - Seta o tipo de transição(restart, back e next)
/// @arg target -O Target será a room quando a transição for para a próxima room

with(objTransition){
	mode = argument[0];
	if(argument_count > 1) target = argument[1];
}
