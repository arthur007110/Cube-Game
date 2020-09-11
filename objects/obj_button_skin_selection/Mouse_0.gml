/// @description Insert description here
// You can write your code in this editor
if(!locked && !global.multiplayer){
	scr_select_skin(skin);

	obj_skin_controller.player_skin = skin;
}

if(!locked && global.multiplayer){
	obj_game_controller.skin_to_assign = skin;
}

if(locked && obj_skin_controller.coins >= skin_price && !global.multiplayer){
	
	audio_play_sound(snd_button_confirmed, 1, 0);
	obj_skin_controller.coins -= skin_price;
	locked = false;
	ds_map_replace(obj_skins.skins_map, sprite_get_name(skin), 1);
	
	scr_save_skins();
	scr_save_game();
}