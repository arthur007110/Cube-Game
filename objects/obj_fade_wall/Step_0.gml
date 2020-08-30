/// @description Insert description here
// You can write your code in this editor

if(global.paused) exit;


if(passable && obstacle != noone){
	instance_destroy(obstacle);
	obstacle = noone;
}
if(!passable && obstacle == noone && !place_meeting(x, y, obj_player)){
	obstacle = instance_create_depth(x, y, -100, obj_obstacle);
	//if
}

if(disappearing && image_alpha > 0.5){
	image_alpha -= 0.01;
}
if(appearing && image_alpha < 1){
	image_alpha += 0.01;
}
if(image_alpha < 0.8){
	passable = true;
}else if(image_alpha > 0.8){
	passable = false;
}