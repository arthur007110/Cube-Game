/// @description Insert description here
// You can write your code in this editor

frist_exec = false;

skins_map = ds_map_create();

if(ds_map_size(skins_map) == 0){
	scr_load_skins();
}

skins = obj_skin_controller.skins;


for (i = 0; i < array_length(skins); i++;)
{
	var size, key, i;
	size = ds_map_size(skins_map);
	key = ds_map_find_first(skins_map);
   
	var exist = false;
	for(var j = 0; j < size; j++){
		if(key == sprite_get_name(skins[i])){
			exist = true;
			break;
		}
		key = ds_map_find_next(skins_map, key);
	}
	if(!exist){
		ds_map_add(skins_map, sprite_get_name(skins[i]), 0);
		if(i == 0){
			size = ds_map_size(skins_map);
			key = ds_map_find_first(skins_map);
   
			for(var j = 0; j < size; j++){
				if(key == sprite_get_name(skins[0])){
					ds_map_replace(skins_map, sprite_get_name(skins[0]), 1);
					frist_exec = true;
					break;
				}
				key = ds_map_find_next(skins_map, key);
			}
		}
	}
}





ds_map_find_first(skins_map);
scr_save_skins();