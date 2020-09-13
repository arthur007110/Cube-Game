/// @description Insert description here
// You can write your code in this editor
if(global.skinP1 == noone && obj_game_controller.skin_to_assign == noone){
	exit;
}else if(global.skinP2 == noone && obj_game_controller.skin_to_assign == noone){
	exit;
}

image_blend = make_color_rgb(255, 255, 255);

decrease = true;
increase = false;