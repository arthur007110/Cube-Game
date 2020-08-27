/// @description Insert description here
// You can write your code in this editor
if(right > camera_get_view_width(view_camera[0]) - 20){
	
	draw_set_font(fnt_start);
	draw_set_color(c_white);
	draw_set_valign(fa_right);
	draw_set_halign(fa_bottom);
	
	draw_text_transformed(room_width - 50, room_height - 100, "Loading...", 0.5, 0.5, 0);
}