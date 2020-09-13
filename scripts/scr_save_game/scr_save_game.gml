// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game(){
	ini_open("savedata.ini");
	
	if(instance_exists(obj_player)){
		ini_write_real("savegame", "coins", obj_player.coins);
		ini_write_string("savegame", "player_sprite", sprite_get_name(obj_player.player_skin));
		
		
	}else if(instance_exists(obj_skin_controller)){
		
		ini_write_real("savegame", "coins", obj_skin_controller.coins);	
		
		ini_write_string("savegame", "spray_color", obj_skin_controller.spray_color);		
	}
	
	ini_close();
}