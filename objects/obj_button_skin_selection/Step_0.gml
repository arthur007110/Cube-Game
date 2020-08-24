/// @description Insert description here
// You can write your code in this editor
if(increase){
	size += 0.05;
}

if(decrease){
	size -= 0.05;
}

if(size == 1.2){
	increase = false;
}

if(size == 1){
	decrease = false;
}

if(sprite_index != skin){
	sprite_index = skin;
}

if(locked){
	var m_size, key, j, skins_map;
	skins_map = obj_skins.skins_map;
	m_size = ds_map_size(skins_map);
	key = ds_map_find_first(skins_map);
   
	var unlock = false;
	for(var j = 0; j < m_size; j++){
		if(key == sprite_get_name(skin)){
			if(ds_map_find_value(skins_map, key)){
				unlock = true;
				break;
			}
		}
		key = ds_map_find_next(skins_map, key);
	}
	if(unlock){
		locked = false;
	}
}