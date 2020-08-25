/// @description Insert description here
// You can write your code in this editor
//declaring variables
text_size = 1;

text_angle = 0;

hue = 0;

growing = true;

turning = true;

audio_volume = 0.1;
if(!audio_is_playing(snd_main_theme)){
	audio_play_sound(snd_main_theme, 1, 1);
}