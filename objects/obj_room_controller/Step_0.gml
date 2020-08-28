/// @description Insert description here
// You can write your code in this editor
if(global.paused){
	if(alarm_get(0) != -1){
		alarm[0] = -1;
	}
	exit;
}else{
	if(alarm_get(0) == -1){
		alarm[0] = room_speed * 2;
	}
}

if(keyboard_check_pressed(vk_f3)){
	show_info = !show_info;
}

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