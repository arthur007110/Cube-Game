/// @description Insert description here
// You can write your code in this editor
if(global.tutorial || global.repeat_tutorial){
	if(global.tutorial_level < 5){
		global.tutorial_level++;
	}else if(global.tutorial_level >= 5){
		scr_complete_tutorial();
		global.tutorial = false;
		global.repeat_tutorial = false;
		global.tutorial_level = 0;
	}
}

scr_sidefade(rm_level, 2);
can_show_tutorial = false;