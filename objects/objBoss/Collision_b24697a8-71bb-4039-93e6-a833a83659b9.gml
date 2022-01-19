/// @description colisão

if(sprite_index == sprBossWitchrun){
	hp -= 0.5;
}

if(sprite_index == sprBossWitchdamage){
	hp -= 0.7;
}

with(other) instance_destroy();

global.points = global.points + choose(60, 70);

if(hp <= 0){
	global.points = global.points + choose(900, 950, 1000);
}