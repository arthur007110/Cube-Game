/// @description Insert description here
// You can write your code in this editor
question = "Want to play the tutorial again?";

if(global.tutorial == 1) question = "Want to play the tutorial?";

if show_question(question)
{
	global.repeat_tutorial = 1;
	scr_sidefade(rm_level, 2);
}
