/// @description Insert description here
// You can write your code in this editor

stage_clear = false;
text_clear_x = -400;

//declaring global variables
randomize();
global.r_w = irandom(170);
global.g_w = irandom(170);
global.b_w = irandom(170);

global.r_s = irandom(170);
global.g_s = irandom(170);
global.b_s = irandom(170);


var L1 = 0.375 * global.r_w + 0.5 * global.r_w + 0.125 * global.r_w;
var L2, contrast_c;
var contrast = false;
 
while(!contrast){
	randomize();
	L2 = 0.375 * global.r_s + 0.5 * global.r_s + 0.125 * global.r_s;
	contrast_c = ((L1 + 0.05) / (L2 + 0.05));
	if(contrast_c > 4) contrast = true;
	else{
		global.r_s = irandom(170);
		global.g_s = irandom(170);
		global.b_s = irandom(170);
	}
}
/// Create Event of level generator object
var img, w, h, cell_w, cell_h, surf, i, j, col, obj; // init vars

//choose a random level
level_spr = choose(
//fases
spr_level01,//obrigatory
spr_level01,
spr_level03,
spr_level04,
spr_level05,
spr_level06,
spr_level07,
spr_level08,
spr_level09,
spr_level_bonus01,
spr_level_bonus02
);

img = spr_level_test_shooter; // image in which a level will be generated from
w = sprite_get_width(img); // image width
h = sprite_get_height(img); // image height

// cell size in which objects will "snap" to
cell_w = floor(room_width / w);
cell_h = floor(room_height / h);

surf = surface_create(w, h); // create a surface

surface_set_target(surf); // set the surface target
draw_sprite(img, 0, 0, 0); // draw the image to the surface
surface_reset_target(); // reset the surface target

for (i = 0; i < w; i++) { // cycle through width of image
    for (j = 0; j < h; j++) { // cycle through height of image
        // get the pixel color at the given coordinates (SLOW FUNCTION, use graciously)
        col = surface_getpixel(surf, i, j);
		r = color_get_red(col);
		g = color_get_green(col);
		b = color_get_blue(col);
        obj = noone; // object to create at coordinates
		
		if(r == 255 && g == 0 && b == 0){ // red represents walls
			obj = obj_wall;
		}else if(r == 0 && g == 0 && b == 0){ // black represents sprays
			obj = obj_spray;
		}else if(r == 255 && g == 255 && b == 255){ // white represents player
			obj = obj_player;
		}else if(r == 0 && g == 255 && b == 0){ // green represents fade walls
			obj = obj_fade_wall;
		}else if(r == 255 && g == 255 && b == 0){ // green represents fade walls
			obj = obj_coin;
		}else if(r == 255 && g == 0 && b == 255){ // green represents fade walls
			obj = obj_shooter_h;
		}else if(r == 0 && g == 255 && b == 255){ // green represents fade walls
			obj = obj_shooter_v;
		}

        // if there is a color match, create the associated object at the given coordinates (px * grid)
        if (obj != noone) {
			w_obstacle = noone;
			if(obj == obj_wall || obj == obj_fade_wall || obj == obj_shooter_h || obj == obj_shooter_v){
				w_obstacle = instance_create_layer(i * cell_w, j * cell_h, "inst_Walls", obj_obstacle);
				//w_obstacle = instance_create_depth(i * cell_w, j * cell_h, -100, obj_obstacle);
				wall = instance_create_layer(i * cell_w, j * cell_h, "inst_Walls", obj);
				//wall = instance_create_depth(i * cell_w, j * cell_h, -100, obj);
				wall.obstacle = w_obstacle;
			}else if(obj == obj_spray){
				var ii, jj;
				
				for (ii = i; ii < i+64; ii+=4) { 
					for (jj = j; jj < j+64; jj+=4) {
						//show_message((i * cell_w)+ii);
						instance_create_layer((i * cell_w)+ii-i, (j * cell_h) + jj-j, "inst_Spray", obj);
						//instance_create_depth((i * cell_w)+ii-i, (j * cell_h) + jj-j, -100, obj);
					}
				}
			}else if(obj == obj_coin){
				var ii, jj;
				
				for (ii = i; ii < i+64; ii+=4) { 
					for (jj = j; jj < j+64; jj+=4) {
						//show_message((i * cell_w)+ii);
						instance_create_layer((i * cell_w)+ii-i, (j * cell_h) + jj-j, "inst_Spray", obj_spray);
						//instance_create_depth((i * cell_w)+ii-i, (j * cell_h) + jj-j, -100, obj_spray);
					}
				}
				instance_create_layer(i * cell_w, j * cell_h, "inst_Items", obj);
				//instance_create_depth(i * cell_w, j * cell_h, -101, obj);
			}else{
				instance_create_layer(i * cell_w, j * cell_h, "inst_Player", obj);
				//instance_create_depth(i * cell_w, j * cell_h, -100, obj);
			}
        }
    }
}

surface_free(surf); // free the surface from memory