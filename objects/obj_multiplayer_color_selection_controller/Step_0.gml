/// @description Insert description here
// You can write your code in this editor
if(global.colorP1 != noone && global.colorP2 != noone && alarm_get(0) == -1){
	picked_colors = true;
}

clear = true;

with(obj_spray){
	if(!painted) other.clear = false;
}

if(clear && alarm_get(0) == -1) alarm[0] = room_speed;