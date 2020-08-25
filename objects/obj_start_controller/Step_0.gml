/// @description Insert description here
// You can write your code in this editor
if(growing && text_size < 2){
	text_size += 0.02;
}else if(!growing && text_size > 1){
	text_size -= 0.02;
}

if(text_size == 1){
	growing = true;
}else if(text_size == 2){
	growing = false;
}

if(turning && text_angle < 15){
	text_angle += 0.1;
}else if(!turning && text_angle > -15){
	text_angle -= 0.1;
}

if(text_angle == -15){
	turning = true;
}else if(text_angle == 15){
	turning = false;
}

if(hue >= 255) hue = 0;

hue += 0.5;

if(audio_volume < 0.8){
	audio_volume += 0.001;
}

audio_sound_gain(snd_main_theme, audio_volume, 5000);