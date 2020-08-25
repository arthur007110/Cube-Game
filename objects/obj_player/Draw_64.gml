/// @description Insert description here
// You can write your code in this editor
//draw_text(0,0, string(h_move) + "  " + string(v_move) + "  " + string(in_move));
draw_set_font(fnt_start);

draw_set_halign(fa_right);

draw_set_valign(fa_top);

draw_set_color(c_yellow);

draw_text_transformed(room_width, 0, "c$:" + string(coins), 0.3, 0.3, 0);