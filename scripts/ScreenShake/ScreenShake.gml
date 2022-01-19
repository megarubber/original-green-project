/// @description ScreenShake(maguinitude, frames)
/// @arg Maguinitude seta a força do shake (raio em pixels)
/// @arg Os frames setam o comprimento do shake em frames (60fps)

with (objCamera){
	if(argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}