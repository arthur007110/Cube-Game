/// @description Insert description here
// You can write your code in this editor
if(stage_clear){
	text_clear_x += 10;
}

with(obj_spray){
	if(!painted) return;
}

stage_clear = true;
obj_room_controller.stage_clear = true;

if(!alarm_get(0)) alarm[0] = room_speed * 3;