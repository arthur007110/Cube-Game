/// @description Insert description here
// You can write your code in this editor

//velocity
velocity = 25;

in_move= false;
//in_move_h = false;

coins = 0;

v_move = 0;
h_move = 0;

player_skin = spr_player_skin02;

player_color = c_white;

//instance_create_depth(x,y, -100, obj_spray);
var ii, jj;
	for (ii = x; ii < x+64; ii+=4) { 
		for (jj = y; jj < y+64; jj+=4) {
			//show_message((i * cell_w)+ii);
			instance_create_depth(x+ii-x, y + jj-y, -100, obj_spray);
		}
	}

depth = -1000;