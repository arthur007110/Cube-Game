// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(){
	if(file_exists("savedata.ini")){
		ini_open("savedata.ini");

		if(instance_exists(obj_player)){
			obj_player.coins = ini_read_real("savegame", "coins", 0);
			
			var skin = ini_read_string("savegame", "player_sprite", spr_player);
			var unlocked = 0;
			try{
				unlocked = scr_skin_unlocked(skin);
			}catch(e){
				e = noone;
				unlocked = scr_skin_unlocked(skin);
			}
			
			if(unlocked){
				obj_player.player_skin = asset_get_index(skin);
			}else{
				obj_player.player_skin = spr_player;
			}
			
		}else if(instance_exists(obj_skin_controller)){
			obj_skin_controller.coins = ini_read_real("savegame", "coins", 0);
		
			obj_skin_controller.player_skin = asset_get_index(ini_read_string("savegame", "player_sprite", spr_player));
			
			obj_skin_controller.spray_color = ini_read_string("savegame", "spray_color", "red");
		}
	
		if(instance_exists(obj_game_controller)){
			
			color = ini_read_string("savegame", "spray_color", "red");
			blend = c_red;
			switch(color){
				case "red":
					blend = c_red;
					break;
				case "green":
					blend = c_green;
					break;
				case "blue":
					blend = c_blue;
					break;
			}
			
			obj_game_controller.spray_color = blend;
		}
		ini_close();
	}else{
		scr_save_game();
	}
}