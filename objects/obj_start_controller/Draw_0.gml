/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_start);

draw_set_halign(fa_center);

draw_set_valign(fa_center);

//draw_set_color(make_color_rgb(200, 50, 50));
show_debug_message(hue);
draw_set_color(make_color_hsv(hue, 255, 255));

draw_text_transformed(room_width/2, room_height/2,"Color Cube", text_size, text_size, text_angle);

draw_set_color(c_white);

draw_text_transformed(room_width/2, (room_height/2) + 200,"Press Start", text_size * 0.35, text_size * 0.35, 0);

draw_set_halign(fa_left);

draw_text_transformed(20, room_height - 60, "Game Version: " + string(GM_version), 0.3, 0.3, 0);