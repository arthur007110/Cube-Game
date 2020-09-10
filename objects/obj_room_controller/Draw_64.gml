/// @description Insert description here
// You can write your code in this editor
if(!global.multiplayer){
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
}else{
	
	if(total_player1 > 0.05){
		draw_set_color(global.colorP1);
		draw_rectangle(20, 15, (((room_width/2) - 50) * total_player1), 40, false);
	}
	draw_set_color(c_black);
	
	draw_rectangle_width(20, 15, ((room_width/2) - 50), 40, 2);
	
	if(total_player2 > 0.05){
		draw_set_color(global.colorP2);
		draw_rectangle(room_width - 20, 15, (((room_width/2) + 50) + (1 - total_player2) * ((room_width/2) - 50)), 40, false);
	}
	draw_set_color(c_black);
	
	draw_rectangle_width(room_width - 20, 15, ((room_width/2) + 50), 40, 2);
	
	draw_set_halign(fa_center);
	draw_set_halign(fa_top);
	
	if(alarm_get(2)/ room_speed > 5){
		draw_text_border_transformed(room_width/2, 30, alarm_get(2)/ room_speed, c_green, c_black, 2, 1, 1, 0, 1);
	}else if(alarm_get(2)/ room_speed > 0){
		draw_text_border_transformed(room_width/2, 30, alarm_get(2)/ room_speed, c_red, c_black, 2, 1, 1, 0, 1);
	}else{
		draw_text_border_transformed(room_width/2, 30, 0, c_red, c_black, 2, 1, 1, 0, 1);
	}
	
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
	
	if(!global.multiplayer){
		draw_text(10, 150, "Coins to Gain: " + string(coins));
	}else{
		draw_text(10, 150, "Sprays P1: " + string(total_player1));
		draw_text(10, 180, "Sprays P2: " + string(total_player2));
	}
}
