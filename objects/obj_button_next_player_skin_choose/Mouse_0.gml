/// @description Insert description here
// You can write your code in this editor
if(global.skinP1 == noone && obj_game_controller.skin_to_assign != noone){
	
	global.skinP1 = obj_game_controller.skin_to_assign;
	obj_game_controller.skin_to_assign = noone;
	scr_sidefade(rm_skin_selection, 2);
	
}else if(global.skinP2 == noone && obj_game_controller.skin_to_assign != noone){
	global.skinP2 = obj_game_controller.skin_to_assign;
	scr_sidefade(rm_multiplayer_color_selection, 2);
}