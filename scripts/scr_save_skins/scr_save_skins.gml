// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_skins(){
	ds_map_secure_save(obj_skins.skins_map, "skins_map.sav");
}