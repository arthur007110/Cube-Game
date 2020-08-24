/// @description Insert description here
// You can write your code in this editor
//draw_text(0,0, string(h_move) + "  " + string(v_move) + "  " + string(in_move));
draw_set_font(fnt_start);

draw_set_halign(fa_center);

draw_set_color(c_yellow);

draw_set_lighting(true);
draw_light_define_direction(1, 0, 1, 0, c_white);
draw_light_enable(1, true);

draw_text(room_width/2, 50, "c$:" + string(coins));