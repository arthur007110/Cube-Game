/// @description Insert description here
// You can write your code in this editor
if(global.paused && alarm_get(0) != -1){
	alarm[0] = -1;
}else{
	if(alarm_get(0) == -1){
		alarm[0] = room_speed * shoot_time;
	}
}
