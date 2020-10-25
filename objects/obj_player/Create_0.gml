/// @description Insert description here
// You can write your code in this editor

//start coordinades
start_x = x;
start_y = y;

can_move = true;

//velocity
velocity = 25;

in_move= false;
//in_move_h = false;

coins = 0;

v_move = 0;
h_move = 0;

invencible = false;

player_skin = spr_player;

player_color = c_white;

//instance_create_depth(x,y, -100, obj_spray);
var ii, jj;
for (ii = x; ii < x+64; ii+=4) { 
	for (jj = y; jj < y+64; jj+=4) {
		//show_message((i * cell_w)+ii);
		instance_create_layer(x+ii-x, y + jj-y, "inst_Spray", obj_spray);
	}
}
	
p_light = noone;

if(global.multiplayer){
	player_skin = global.skinP1;
}