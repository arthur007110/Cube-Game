/// @description Insert description here
// You can write your code in this editor

draw_set_valign(fa_center);
draw_set_halign(fa_center);

if(locked){
	draw_set_color(c_dkgray);
	
	draw_set_alpha(0.9);
	
	draw_rectangle(x - 5, y - 5, x + 63 + 5, y + 63 + 5, false);
	
	draw_set_alpha(1);
	
	draw_set_color(c_black);
	draw_text_transformed(x, y, skin_id, 0.5, 0.5, 0);
	
	
	draw_set_font(fnt_debug);
	draw_set_color(c_yellow);
	draw_text(x + sprite_width/2, y + sprite_height/2, "c$:" + string(skin_price));
	
	draw_set_font(fnt_start);
	
}else if(skin == obj_skin_controller.player_skin){
	draw_set_color(c_aqua);
	
	draw_set_alpha(0.6);
	
	draw_rectangle(x - 5, y - 5, x + 63 + 5, y + 63 + 5, false);
	
	draw_set_alpha(1);
	
	draw_set_color(c_lime);
	draw_text_transformed(x, y, skin_id, 0.5, 0.5, 0);
}else{
	draw_set_color(c_yellow);
	draw_text_transformed(x, y, skin_id, 0.5, 0.5, 0);
}
