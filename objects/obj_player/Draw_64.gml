/// @description Insert description here
// You can write your code in this editor
//draw_text(0,0, string(h_move) + "  " + string(v_move) + "  " + string(in_move));
if(!global.multiplayer){
	draw_set_font(fnt_start);

	draw_set_halign(fa_right);

	draw_set_valign(fa_top);

	draw_set_color(c_yellow);

	draw_text_transformed(room_width, 0, "c$:" + string(coins), 0.3, 0.3, 0);
}else{
	draw_set_color(global.colorP1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	draw_set_font(fnt_debug);
	
	draw_text_border_transformed(x + sprite_width/2, y - 10, "P1", global.colorP1, c_black, 2, 1, 1, 0, 1);
}