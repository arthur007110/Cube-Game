// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///draw_text_border_transformed(x, y, text, color, border_color, border_size, xscale, yscale, angle, alpha)
function draw_text_border_transformed(x, y, text, color, border_color, border_size, xscale, yscale, angle, alpha){
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_text_transformed_color(x + border_size, y, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	draw_text_transformed_color(x - border_size, y, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	draw_text_transformed_color(x, y + border_size, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	draw_text_transformed_color(x, y - border_size, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	
	draw_text_transformed_color(x + border_size, y + border_size, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	draw_text_transformed_color(x + border_size, y - border_size, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	draw_text_transformed_color(x - border_size, y + border_size, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	draw_text_transformed_color(x - border_size, y - border_size, text, xscale, yscale, angle, border_color, border_color, border_color, border_color, alpha);
	
	draw_text_transformed_color(x, y, text, xscale, yscale , angle, color, color, color, color, alpha);
}