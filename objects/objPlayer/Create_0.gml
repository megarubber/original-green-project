/// @description Variáveis e Criação da Arma

hp = 100;
horSpeed = 0;
verSpeed = 0;
walkSpeed = 4;
grav = 0.3;
global.points = 0;
friction = 0.3;
invicibility = 0;
global.finished = 0;
global.finalpoints = 0;
timer = 0;
moving = 0;
global.dead = false;
timerfinished = 0;

jumpSpeed_Normal = 9;
jumpSpeed_PowerUp = 13;

jumpSpeed = jumpSpeed_Normal;

// Criar Arma

instance_create_layer(x, y, "Arma", objGun);

// Grappling Hook