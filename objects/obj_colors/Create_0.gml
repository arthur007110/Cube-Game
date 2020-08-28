/// @description Insert description here
// You can write your code in this editor

frist_exec = false;

colors_map = ds_map_create();

if(ds_map_size(colors_map) == 0){
	scr_load_colors();
}

colors = [
"red",
"blue",
"green",
];


for (i = 0; i < array_length(colors); i++;)
{
	var size, key, i;
	size = ds_map_size(colors_map);
	key = ds_map_find_first(colors_map);
   
	var exist = false;
	for(var j = 0; j < size; j++){
		if(key == colors[i]){
			exist = true;
			break;
		}
		key = ds_map_find_next(colors_map, key);
	}
	if(!exist){
		ds_map_add(colors_map, colors[i], 0);
		if(i == 0){
			size = ds_map_size(colors_map);
			key = ds_map_find_first(colors_map);
   
			for(var j = 0; j < size; j++){
				if(key == colors[0]){
					ds_map_replace(colors_map, colors[0], 1);
					frist_exec = true;
					break;
				}
				key = ds_map_find_next(colors_map, key);
			}
		}
	}
}

ds_map_find_first(colors_map);
scr_save_colors();