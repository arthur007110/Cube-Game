// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_select_color(color){
	
	ini_open("savedata.ini");
	
	ini_write_string("savegame", "spray_color", color);
	
	ini_close();
	
	
}