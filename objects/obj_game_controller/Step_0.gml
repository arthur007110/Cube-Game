/// @description Insert description here
// You can write your code in this editor
var outof = game_get_speed(gamespeed_fps);
window_set_caption("Cube Game Fps: " + string(fps) + "/" + string(outof));

if(room == rm_level){
	if(audio_is_playing(snd_main_theme)){
		audio_stop_sound(snd_main_theme);
	}
	if(!audio_is_playing(snd_level_music01) && 
	   !audio_is_playing(snd_level_music02) && 
	   !audio_is_playing(snd_level_music03)){
		
		music = choose(snd_level_music01,
					   snd_level_music02,
					   snd_level_music03,);
		audio_play_sound(music, 1, 0);
		audio_sound_gain(music, music_volume, 0);
	}
}
if(room == rm_start){
	if(global.multiplayer) global.multiplayer = 0;
}

if(!global.multiplayer){
	global.gamemode = noone;

	skin_to_assign = noone;

	global.skinP1 = noone;

	global.skinP2 = noone;

	global.colorP1 = noone;

	global.colorP2 = noone;
}

if(global.paused){
	if(!instance_exists(obj_button_resume_game)){
		instance_create_layer(room_width/2, 200, "inst_Menu", obj_button_resume_game);
	}
	if(!instance_exists(obj_button_to_menu)){
		instance_create_layer(room_width/2, 300, "inst_Menu", obj_button_to_menu);
	}
}else{
	if(instance_exists(obj_button_resume_game)){
		instance_destroy(obj_button_resume_game);
	}
	if(instance_exists(obj_button_to_menu)){
		instance_destroy(obj_button_to_menu);
	}
}

if(global.levels_to_gain_skip == 0){
	global.skips_number++;
	global.levels_to_gain_skip = 4;
}


if(keyboard_check_pressed(vk_up)){
	code += "U"
}
if(keyboard_check_pressed(vk_down)){
	code += "D"
}
if(keyboard_check_pressed(vk_right)){
	code += "R"
}
if(keyboard_check_pressed(vk_left)){
	code += "L"
}
if(keyboard_check_pressed(ord("B"))){
	code += "B"
}
if(keyboard_check_pressed(ord("A"))){
	code += "A"
}

if(string_length (code) > 10){
	code = string_delete(code, 1, 1);
	code = string_delete(code, 1, 1);
}
if(code == coins_code && room == rm_skin_selection && !global.multiplayer){
	if(instance_exists(obj_skin_controller)){
		obj_skin_controller.coins += 5000;
	}
	code = ""
}