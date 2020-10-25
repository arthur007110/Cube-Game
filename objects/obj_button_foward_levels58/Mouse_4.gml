/// @description Insert description here
// You can write your code in this editor
var qtd_levels = array_length(obj_levels_controller.levels);

var qtd_pages = (qtd_levels/15)-1;
if(global.level_page < qtd_pages){
	global.level_page++;
	room_restart();
}