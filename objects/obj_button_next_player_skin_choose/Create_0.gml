/// @description Insert description here
// You can write your code in this editor

if(!global.multiplayer) instance_destroy();

size = 1;

if(global.skinP1 == noone){
	text = "Next Player";
}else{
	text = "Ready!";
}

increase = false;
decrease = false;