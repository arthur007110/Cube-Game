/// @description Insert description here
// You can write your code in this editor

h_gap = (room_width-border)/total_coins;

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_debug);

for(var i = 0; i < coins; i++){
	draw_sprite(spr_coin, 0, (border/2) + (i * h_gap) - (sprite_get_width(spr_coin)/2), 0);
}

if(show_points){
	draw_text_ext_transformed((room_width/2) + 50, 25, "x "+ string(coins), 20, 200, 1, 1, 0);
}

if(show_info){//only show if active
	//set specific font
	draw_set_font(fnt_debug);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	
	//version infos
	draw_text(10, 50, "Game Version: " + string(GM_version));
	
	var outof = game_get_speed(gamespeed_fps);
	draw_text(10, 70, "Fps: " + string(fps) + "/" + string(outof));

	//player possition
	draw_text(10, 90, "Player Position: x: " + string(obj_player.x) + " y: " + string(obj_player.y));
	
	//how many pixels to paint
	var painteds = 0;
	with(obj_spray){
		if(painted) painteds++;
	}
	
	draw_text(10, 110, "Remaing to Paint: " + string((instance_number(obj_spray) - painteds)/256) + " Total: " + string(instance_number(obj_spray)/256));
	
	draw_text(10, 130, "Level Clear: " + string(stage_clear));
	
	draw_text(10, 150, "Coins to Gain: " + string(coins));
}
