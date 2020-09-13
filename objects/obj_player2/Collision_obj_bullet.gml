/// @description Insert description here
// You can write your code in this editor
if(!can_move) exit;

instance_create_layer(x, y, "inst_Player", obj_player_death);

if(global.multiplayer){
	alarm[0] = room_speed;
	can_move = false;
	image_alpha = 0;
}else if(!invencible || !obj_room_controller.stage_clear){
	scr_sidefade(rm_level, 2);
}