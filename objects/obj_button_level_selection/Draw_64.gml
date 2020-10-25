/// @description Insert description here
// You can write your code in this editor

draw_set_valign(fa_center);
draw_set_halign(fa_center);

if(locked){
	draw_set_color(c_dkgray);
	
	draw_set_alpha(0.9);
	
	draw_rectangle(x - sprite_width/2, y - sprite_height/2, x + sprite_width/2, y + sprite_height/2, false);
	
	draw_set_alpha(1);
	
	draw_set_color(c_black);
	draw_text_transformed(x, y, level_id, 0.5, 0.5, 0);
	
	draw_set_font(fnt_start);
	
}else{
	draw_set_color(c_lime);
	draw_text_transformed(x, y, level_id, 0.5, 0.5, 0);
}
