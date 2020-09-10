/// @description Insert description here
// You can write your code in this editor
painted = true;

paitend_by = "player1";

if(!global.multiplayer){
	image_blend = obj_game_controller.spray_color;
}else{
	image_blend = global.colorP1;
}