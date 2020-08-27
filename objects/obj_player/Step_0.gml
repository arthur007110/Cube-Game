/// @description Insert description here
// You can write your code in this editor

if(p_light == noone){
	p_light = instance_create_layer(x, y, "inst_Player", obj_player_light);
}

image_blend = player_color;

sprite_index = player_skin;

//check inputs

if(!in_move){
	if(keyboard_check_pressed(ord("A"))){
		h_move = -velocity;
		v_move = 0;
		in_move = true;
	}
	if(keyboard_check_pressed(ord("D"))){
		h_move = velocity;
		v_move = 0;
		in_move = true;
	}
	if(keyboard_check_pressed(ord("W"))){
		v_move = -velocity;
		h_move = 0;
		in_move = true;
	}
	if(keyboard_check_pressed(ord("S"))){
		v_move = velocity;
		h_move = 0;
		in_move = true;
	}
}


//colission with walls

if(place_meeting(x + h_move, y, obj_obstacle) && h_move != 0){
	inst_h = instance_place(x + h_move, y, obj_obstacle);
	if(inst_h.passable) return;
	
	while(!place_meeting(x + sign(h_move), y, obj_obstacle))
		x += sign(h_move);
	h_move = 0;
	in_move = false;
}

if(place_meeting(x, y + v_move, obj_obstacle) && v_move != 0){
	inst_v = instance_place(x, y + v_move, obj_obstacle);
	if(inst_v.passable) return;
	
	while(!place_meeting(x, y + sign(v_move), obj_obstacle))
		y += sign(v_move);
	v_move = 0;
	in_move = false;
}


//move
hspeed = h_move;
vspeed = v_move;

p_light.light[| eLight.X] = x + (sprite_width/2);
p_light.light[| eLight.Y] = y + (sprite_height/2);