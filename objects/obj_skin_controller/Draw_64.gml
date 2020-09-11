/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_start);

draw_set_halign(fa_center);

draw_set_color(c_yellow);

//draw_text(room_height, 50, "Coins: " + string(coins));

if(!global.multiplayer){
	draw_text_ext_transformed(room_height, 50, "c$: " + string(coins), 10, 9999, .5, .5, 0);
}else{
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_text_border_transformed(room_width/2, 100, text_player, c_white, c_black, 2, 1, 1, 0, 1);
}