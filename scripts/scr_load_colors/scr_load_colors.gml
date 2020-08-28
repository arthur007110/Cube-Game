// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_colors(){
	if(file_exists("colors_map.sav")){
		with(obj_colors){
			ds_map_destroy(colors_map);
			colors_map = ds_map_secure_load("colors_map.sav");
			room_restart();
		}
	}
}