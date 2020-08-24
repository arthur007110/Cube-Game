// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_skins(){
	if(file_exists("skins_map.sav")){
		with(obj_skins){
			ds_map_destroy(skins_map);
			skins_map = ds_map_secure_load("skins_map.sav");
			room_restart();
		}
	}
}