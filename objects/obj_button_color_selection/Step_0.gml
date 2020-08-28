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

switch(b_color){
	case "red":
		image_blend = c_red;
		break;
	case "green":
		image_blend = c_green;
		break;
	case "blue":
		image_blend = c_blue;
		break;
}

if(locked){
	var m_size, key, j, colors_map;
	colors_map = obj_colors.colors_map;
	m_size = ds_map_size(colors_map);
	key = ds_map_find_first(colors_map);
   
	var unlock = false;
	for(var j = 0; j < m_size; j++){
		if(key == b_color){
			if(ds_map_find_value(colors_map, key)){
				unlock = true;
				break;
			}
		}
		key = ds_map_find_next(colors_map, key);
	}
	if(unlock){
		locked = false;
	}
}