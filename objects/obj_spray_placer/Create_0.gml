/// @description Insert description here
// You can write your code in this editor
var ii, jj;
for (ii = x; ii < x+64; ii+=4) { 
	for (jj = y; jj < y+64; jj+=4) {
		//show_message((i * cell_w)+ii);
		instance_create_layer(x+ii-x, y + jj-y, "inst_Spray", obj_spray);
	}
}