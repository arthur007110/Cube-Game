/// @description Insert description here
// You can write your code in this editor

if(global.paused){
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	
	draw_rectangle(0, 0, room_width, room_height, 0);
	
	draw_set_font(fnt_start);
	draw_set_color(c_white);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	
	draw_text(room_width/2, 100, "Game Paused");
	
}