/// @description Insert description here
// You can write your code in this editor

if(stage_clear){
	draw_set_font(fnt_stage_clear);

	//draw_set_halign(fa_readonly);
	draw_set_valign(fa_center);
	if(!global.multiplayer){
		draw_set_color(c_white);
		draw_text_transformed(text_clear_x, room_height/2,"Stage Clear!", 1, 1, 0);
	}else{
		
		draw_set_font(fnt_start);
		
		var draw = false;
		
		if(obj_room_controller.win == "Player 1"){
			draw_set_color(global.colorP1);	
		}else if(obj_room_controller.win == "Player 2"){
			draw_set_color(global.colorP2);	
		}else{
			draw_set_color(c_white);
			draw = true;
		}
		if(!draw){
			draw_text_transformed(text_clear_x, room_height/2, obj_room_controller.win + " Wins!", 1, 1, 0);
		}else{
			draw_text_transformed(text_clear_x, room_height/2, obj_room_controller.win, 1, 1, 0);
		}
	}
}

if(!global.multiplayer){
	
}