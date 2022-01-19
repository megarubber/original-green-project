/// @description colisão

ishit = true;
alarm[0] = 3;

hp -= 30

global.points = global.points + 5;

if(hp <= 0){
	global.points = global.points + choose(50, 60, 70);
}

with(other) instance_destroy();
