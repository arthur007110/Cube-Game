// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_skin_unlocked(skin){
	if(file_exists("skins_map.sav")){
		skins_map = ds_map_secure_load("skins_map.sav");
		
		var size, key;
	
		size = ds_map_size(skins_map);
		key = ds_map_find_first(skins_map);
   
		var unlocked = false;
		var exists = false;
		
		for(var j = 0; j < size; j++){
			if(key == skin){
				unlocked = ds_map_find_value(skins_map, key);
				exists = true;
				break;
			}
			key = ds_map_find_next(skins_map, key);
		}
		if(!exists){
			throw("The skin: "+ skin +", not exists on save file");
		}
		return unlocked;
	}
	throw("The save file not exists");
	return false;
}