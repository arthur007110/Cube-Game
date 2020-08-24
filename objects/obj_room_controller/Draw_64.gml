/// @description Insert description here
// You can write your code in this editor

if(show_info){//only show if active
	//set specific font
	draw_set_font(fnt_debug);
	draw_set_halign(fa_left);
	
	//version infos
	draw_text(10, 10, "Game Version: " + string(GM_version));

	//player possition
	draw_text(10, 30, "Player Position: x: " + string(obj_player.x) + " y: " + string(obj_player.y));
	
	//how many pixels to paint
	var painteds = 0;
	with(obj_spray){
		if(painted) painteds++;
	}
	
	draw_text(10, 50, "Remaing to Paint: " + string((instance_number(obj_spray) - painteds)/256) + " Total: " + string(instance_number(obj_spray)/256));
}