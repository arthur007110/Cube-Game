/// @description Insert description here
// You can write your code in this editor
if(global.paused || !can_move){ 
	hspeed = 0;
	vspeed = 0;
	exit;
}


if(p_light == noone && !room == rm_start){
	if(!global.multiplayer){
		switch(obj_game_controller.spray_color){
			case c_red:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_red);
				break;
			case c_green:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_green);
				break;
			case c_blue:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_blue);
				break;
			default:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_red);
				break;
		}
	}else{
		switch(global.colorP1){
			case c_red:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_red);
				break;
			case c_green:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_green);
				break;
			case c_blue:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_blue);
				break;
			default:
				p_light = instance_create_layer(x, y, "inst_Player", obj_player_light_white);
				break;
		}
	}
}

image_blend = player_color;

sprite_index = player_skin;

//check inputs

if(!in_move && can_move){
	if(last_mouse_x > mouse_x + 10){
		h_move = -velocity;
		v_move = 0;
		in_move = true;
	}
	if(last_mouse_x < mouse_x - 10){
		h_move = velocity;
		v_move = 0;
		in_move = true;
	}
	if(last_mouse_y > mouse_y + 10){
		v_move = -velocity;
		h_move = 0;
		in_move = true;
	}
	if(last_mouse_y < mouse_y - 10){
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

last_mouse_x = mouse_x;
last_mouse_y = mouse_y;