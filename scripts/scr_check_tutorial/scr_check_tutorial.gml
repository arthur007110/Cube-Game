// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_tutorial(){
	if(file_exists("savedata.ini")){
		ini_open("savedata.ini");
			global.tutorial = ini_read_real("savegame", "tutorial", 1);
		ini_close();
	}
}