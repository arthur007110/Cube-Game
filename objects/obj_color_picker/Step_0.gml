/// @description Insert description here
// You can write your code in this editor
if(light == noone && p_color != noone){
	image_blend = p_color;
	
	switch(p_color){
			case c_red:
				light = instance_create_layer(x, y, "inst_Player", obj_player_light_red);
				break;
			case c_green:
				light = instance_create_layer(x, y, "inst_Player", obj_player_light_green);
				break;
			case c_blue:
				light = instance_create_layer(x, y, "inst_Player", obj_player_light_blue);
				break;
			case c_fuchsia:
				light = instance_create_layer(x, y, "inst_Player", obj_player_light_pink);
				break;
			case c_yellow:
				light = instance_create_layer(x, y, "inst_Player", obj_player_light_yellow);
				break;
			default:
				light = instance_create_layer(x, y, "inst_Player", obj_player_light_white);
				break;
		}
}

image_angle = angle;

if(turn_right){
	angle-= turn_factor;
}else{
	angle+= turn_factor;
}

if(turn_factor < 5 && turn_right){
	turn_factor += 0.1;
}else if(turn_factor > 1 && !turn_right){
	turn_factor -= 0.1;
}

if(turn_factor >= 5 && alarm_get(0) == -1){
	alarm[0] = room_speed;
}else if(turn_factor <= 1 && alarm_get(1) == -1){
	alarm[1] = room_speed;
}