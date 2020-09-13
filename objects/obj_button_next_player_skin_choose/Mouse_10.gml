/// @description Insert description here
// You can write your code in this editor
if(global.skinP1 == noone && obj_game_controller.skin_to_assign == noone){
	exit;
}else if(global.skinP2 == noone && obj_game_controller.skin_to_assign == noone){
	exit;
}

audio_play_sound(snd_button_enter, 1, 0);
image_blend = make_color_rgb(150, 150, 150);

increase = true;
decrease = false;