/// @description Insert description here
// You can write your code in this editor
if(global.skips_number > 0 && !global.multiplayer && can_skip){
	scr_sidefade(rm_level, 2);
	global.skips_number--;
	can_skip = false;
}