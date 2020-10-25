/// @description Insert description here
// You can write your code in this editor
show_points = true;
obj_player.coins += coins;
global.levels_to_gain_skip--;

if(global.tutorial || global.repeat_tutorial) exit;

if(global.selected_level-1 == global.level){
	global.level++;
}
global.selected_level++;