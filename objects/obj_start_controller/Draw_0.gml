/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.6);
draw_set_color(c_black);

draw_rectangle(0, 0, room_width, room_height, 0);

draw_set_alpha(1);

draw_set_font(fnt_menu);

draw_set_halign(fa_center);

draw_set_valign(fa_center);

//draw_set_color(make_color_rgb(200, 50, 50));
draw_set_color(make_color_hsv(hue, 255, 255));

draw_text_transformed(330, room_height - 60,"Alpha!", 1, 1, 0);

draw_set_color(c_white);

//draw_text_transformed(room_width/2, (room_height/2) + 200,"Press Start", text_size * 0.35, text_size * 0.35, 0);

draw_set_halign(fa_left);

draw_text_transformed(20, room_height - 60, "Game Version: " + string(GM_version), 1, 1, 0);