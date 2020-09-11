/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fnt_start);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if(obj_game_controller.skin_to_assign == noone){
	image_blend = make_color_rgb(20, 20, 20);
}else{
	image_blend = c_white;
}

draw_text_transformed(x, y, text, 0.5, 0.5, 0);