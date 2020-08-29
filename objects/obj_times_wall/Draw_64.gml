/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_start);
draw_set_color(obj_game_controller.spray_color);

draw_set_valign(fa_center);
draw_set_halign(fa_center);

if(times_passable > 0){
	draw_text_transformed(x + sprite_width/2, y + sprite_height/2, "OFF", 0.3, 0.3, 0);
}else if(times_passable <= 0){
	draw_text_transformed(x + sprite_width/2, y + sprite_height/2, "ON", 0.3, 0.3, 0);
}