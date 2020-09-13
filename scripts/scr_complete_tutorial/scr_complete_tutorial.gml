// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_complete_tutorial(){
	ini_open("savedata.ini");
		ini_write_real("savegame", "tutorial", 0);	
	ini_close();
}