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
			default:
				light = instance_create_layer(x, y, "inst_Player", obj_player_light_white);
				break;
		}
}

image_angle = angle;

angle-= 2;