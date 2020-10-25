/// @description Insert description here
// You can write your code in this editor
if(!locked){
	scr_select_color(b_color);

	obj_skin_controller.spray_color = b_color;
}
if(locked && obj_skin_controller.coins >= color_price){
	
	audio_play_sound(snd_button_confirmed, 1, 0);
	obj_skin_controller.coins -= color_price;
	locked = false;
	ds_map_replace(obj_colors.colors_map, b_color, 1);
	
	scr_save_colors();
	scr_save_game();
}