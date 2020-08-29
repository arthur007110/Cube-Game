/// @description Insert description here
// You can write your code in this editor

//set color to level choose color
//image_blend = make_color_rgb(global.r_w, global.g_w, global.b_w);

//time to change from passable to not passable
time_transition = 1;

times_passable = 1;

//obstacle that represents this wall
obstacle = noone;

//decide if can or not pass through
passable = false;

//change alpha to invisible
disappearing = false;

//change alpha to visible
appearing = false;

//set timer to start working
alarm[0] = room_speed * time_transition/ 3;