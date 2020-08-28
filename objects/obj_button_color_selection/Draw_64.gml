/// @description Insert description here
// You can write your code in this editor

draw_set_valign(fa_center);
draw_set_halign(fa_center);

if(locked){
	draw_set_color(c_dkgray);
	
	draw_set_alpha(0.9);
	
	draw_rectangle(x - 5, y - 5, x + sprite_width + 5, y + sprite_height + 5, false);
	
	draw_set_alpha(1);
	
	draw_set_font(fnt_debug);
	draw_set_color(c_yellow);
	draw_text(x + sprite_width/2, y + sprite_height/2, "c$:" + string(color_price));
	
	draw_set_font(fnt_start);
	
}else if(b_color == obj_skin_controller.spray_color){
	draw_set_color(c_white);
	
	draw_set_alpha(0.6);
	
	draw_rectangle_width(x - 6, y - 6, x + sprite_width + 5, y + sprite_height + 5, 5);
	
	draw_set_alpha(1);
	
}
