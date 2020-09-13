/// @description Insert description here
// You can write your code in this editor
if(!file_exists("savedata.ini") || !file_exists("skins_map.sav")){
	ini_open("savedata.ini");
	
	ini_write_real("savegame", "coins", 0);
	ini_write_string("savegame", "player_sprite", sprite_get_name(spr_player));
	ini_write_real("savegame", "tutorial", 1);
	
	ini_close();
	
	skins_map = ds_map_create();

	skins = [
	spr_player,
	spr_player_skin03,
	spr_player_skin02,
	spr_player_skin01,
	spr_player_skin04,
	spr_player_skin05
	];

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
	
	ds_map_secure_save(skins_map, "skins_map.sav");
}