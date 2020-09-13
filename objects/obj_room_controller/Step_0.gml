/// @description Insert description here
// You can write your code in this editor
if(global.paused){
	if(global.multiplayer){
		alarm[2]++;
		exit;
	}
	
	if(alarm_get(0) != -1){
		alarm[0] = -1;
	}
	exit;
}else{
	if(!global.multiplayer){
		if(alarm_get(0) == -1 && coins > 1){
			alarm[0] = room_speed * 2;
		}
	}
}

if(keyboard_check_pressed(vk_f3)){
	show_info = !show_info;
}

if(!global.multiplayer){
	if(stage_clear && border < room_width){
		alarm[0] = -1;
		if(border + 10 > room_width){
			while(border < room_width){
				border++;
			}
		}else{
			border += 10;
		}
	}
	if(border > (room_width - 10) && alarm_get(1) == -1 && !added_coins){
		alarm[1] = room_speed/ 1.5;
		added_coins = true;
	}
}
if(global.multiplayer){
	var count_p1 = 0;
	var count_p2 = 0;
	
	with(obj_spray){
		if(painted){
			switch(paitend_by){
				
				case "player1":
					count_p1++;
					break;
				case "player2":
					count_p2++;
					break;				
			}
		}
	}
	if(!stage_clear){
		total_player1 = count_p1 / (instance_number(obj_spray)/2);
		total_player2 = count_p2 / (instance_number(obj_spray)/2);
	}else if(alarm_get(2) / room_speed > 0.02){
		alarm[2]++;
	}
	if(total_player1 == 1 && win == ""){ 
		win = "Player 1";
		stage_clear = 1;
		obj_room_mananger.stage_clear = 1;
		obj_room_mananger.alarm[1] = room_speed * 2;
	}else if(total_player2 == 1 && win == ""){ 
		win = "Player 2";
		stage_clear = 1;
		obj_room_mananger.stage_clear = 1;
		obj_room_mananger.alarm[1] = room_speed * 2;
	}
}
