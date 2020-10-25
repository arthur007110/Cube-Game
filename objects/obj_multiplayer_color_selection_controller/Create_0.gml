/// @description Insert description here
// You can write your code in this editor

picked_colors = false;

randomize();

colorp1 = choose(c_green, c_red, c_blue);

colorp2 = noone;


while(true){
	color = choose(c_green, c_red, c_blue, c_fuchsia, c_yellow);
	
	if(color != colorp1){
		colorp2 = color;
		break;
	}
}

picker = instance_create_layer(159, 287, "inst_Player", obj_color_picker);
picker.p_color = colorp1;
picker = instance_create_layer(159, 479, "inst_Player", obj_color_picker);
picker.p_color = colorp1;

picker = instance_create_layer(863, 287, "inst_Player", obj_color_picker);
picker.p_color = colorp2;
picker = instance_create_layer(863, 479, "inst_Player", obj_color_picker);
picker.p_color = colorp2;