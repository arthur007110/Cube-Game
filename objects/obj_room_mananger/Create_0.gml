/// @description Insert description here
// You can write your code in this editor

stage_clear = false;
text_clear_x = -400;

pithon = false;

global.w = c_white;

/*
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
}*/
/// Create Event of level generator object
var img, w, h, cell_w, cell_h, surf, i, j, col, obj; // init vars

//choose betwen normal level or bônus level
chance = irandom(99);

if(chance < 20){
	//choose a random bônus level
	level_spr = choose(
	//bônus levels
	spr_level_bonus01,
	spr_level_bonus02,
	spr_level_bonus03
	);
}else{
	level_spr = choose(
	//levels
	spr_level01,
	spr_level03,
	spr_level04,
	spr_level05,
	spr_level06,
	spr_level07,
	spr_level08,
	spr_level09,
	spr_level10,
	spr_level11,
	spr_level12,
	spr_level13,
	spr_level14,
	spr_level15,
	spr_level16,
	spr_level17,
	spr_level18,
	spr_level19,
	spr_level20,
	spr_level21,
	spr_level22,
	spr_level23
	);
}
img = level_spr; // image in which a level will be generated from
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
		}else if(r == 255 && g == 255 && b == 0){ // yellow represents coins
			obj = obj_coin;
		}else if(r == 255 && g == 0 && b == 255){ // pink represents shooter horizontal
			obj = obj_shooter_h;
		}else if(r == 0 && g == 0 && b == 255){ // cyan represents shooter vertical
			obj = obj_times_wall;
		}else if(r == 0 && g == 255 && b == 255){ // cyan represents shooter vertical
			obj = obj_shooter_v;
		}else if(r == 255 && g == 255 && b == 1){ // cyan represents shooter vertical
			obj = "easy";
		}else if(r == 255 && g == 255 && b == 2){ // cyan represents shooter vertical
			obj = "medium";
		}else if(r == 255 && g == 255 && b == 3){ // cyan represents shooter vertical
			obj = "hard";
		}else if(r == 255 && g == 255 && b == 5){ // cyan represents shooter vertical
			pithon = true;
			obj = obj_wall;
		}

        // if there is a color match, create the associated object at the given coordinates (px * grid)
        if (obj != noone) {
			
			if(obj == "easy"){
				rm_controller = instance_create_layer(x, y, "inst_Controllers", obj_room_controller);
				rm_controller.total_coins = 8;
				rm_controller.coins = 8;
				rm_controller.room_time = 5;
				rm_controller.alarm[0] = room_speed * rm_controller.room_time;
				
				global.w = c_lime;
				
				obj = obj_wall;
			}else if(obj == "medium"){
				rm_controller = instance_create_layer(x, y, "inst_Controllers", obj_room_controller);
				rm_controller.total_coins = 15;
				rm_controller.coins = 15;
				rm_controller.room_time = 12;
				rm_controller.alarm[0] = room_speed * rm_controller.room_time;
				
				global.w = c_yellow;
				
				obj = obj_wall;
			}else if(obj == "hard"){
				rm_controller = instance_create_layer(x, y, "inst_Controllers", obj_room_controller);
				rm_controller.total_coins = 20;
				rm_controller.coins = 20;
				rm_controller.room_time = 20;
				rm_controller.alarm[0] = room_speed * rm_controller.room_time;
				
				global.w = c_orange;
				
				obj = obj_wall;
			}
			
			w_obstacle = noone;
			if(obj == obj_wall || obj == obj_fade_wall || obj == obj_shooter_h || obj == obj_shooter_v || obj == obj_times_wall){
				w_obstacle = instance_create_layer(i * cell_w, j * cell_h, "inst_Walls", obj_obstacle);
				
				instance_create_layer(i * cell_w, j * cell_h, "inst_Wall_Casters", obj_wall_caster);
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

scr_load_game(); // load game
surface_free(surf); // free the surface from memory