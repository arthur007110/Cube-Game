/// @description Insert description here
// You can write your code in this editor
//declaring variables
if(!instance_exists(obj_game_controller)){
	instance_create_layer(x, y, "inst_Controllers", obj_game_controller);
	audio_sound_gain(snd_coin, obj_game_controller.sound_fx_volume, 0);
	audio_sound_gain(snd_button_enter, obj_game_controller.sound_fx_volume, 0);
	audio_sound_gain(snd_player_move, obj_game_controller.sound_fx_volume+0.2, 0);
	audio_sound_gain(snd_button_confirmed, obj_game_controller.sound_fx_volume, 0);
}

text_size = 1;

text_angle = 0;

hue = 0;

growing = true;

turning = true;

music_volume = obj_game_controller.music_volume;

sound_ennabled = true;

if(audio_is_playing(snd_level_music01) ||
	audio_is_playing(snd_level_music02) ||
	audio_is_playing(snd_level_music03)){
	audio_stop_all();	   
}

if(!audio_is_playing(snd_main_theme)){
	if(sound_ennabled) audio_play_sound(snd_main_theme, 1, 1);
}