/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_font(fnt_start);
draw_set_valign(fa_bottom);
draw_set_halign(fa_center);

draw_text(x, y, "Moviment");

draw_text_border_transformed(x - 220, y + 80, "Player 1", c_white, c_black, 2, 0.6, 0.6, 0, 1);

draw_text_border_transformed(x + 200, y + 80, "Player 2", c_white, c_black, 2, 0.6, 0.6, 0, 1);
