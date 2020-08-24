// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(){
	ini_open("savedata.ini");

	if(instance_exists(obj_player)){
		obj_player.coins = ini_read_real("savegame", "coins", 0);
		obj_player.player_skin = asset_get_index(ini_read_string("savegame", "player_sprite", spr_player));
	}else{
		obj_skin_controller.coins = ini_read_real("savegame", "coins", 0);
		
		obj_skin_controller.player_skin = asset_get_index(ini_read_string("savegame", "player_sprite", spr_player));
	}
	
	ini_close();
}