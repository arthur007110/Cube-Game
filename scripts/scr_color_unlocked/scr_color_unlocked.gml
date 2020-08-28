// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_color_unlocked(color){
	if(file_exists("colors_map.sav")){
		colors_map = ds_map_secure_load("colors_map.sav");
		
		var size, key;
	
		size = ds_map_size(colors_map);
		key = ds_map_find_first(colors_map);
   
		var unlocked = false;
		var exists = false;
		
		for(var j = 0; j < size; j++){
			if(key == color){
				unlocked = ds_map_find_value(colors_map, key);
				exists = true;
				break;
			}
			key = ds_map_find_next(colors_map, key);
		}
		if(!exists){
			throw("The color: "+ color +", not exists on save file");
		}
		return unlocked;
	}
	throw("The save file not exists");
	return false;
}