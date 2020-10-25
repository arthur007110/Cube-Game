/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_room_mananger)){
	image_blend = global.w;
}else{
	image_blend = c_ltgray;
}
if(room == rm_start){
	image_blend = make_color_rgb(46, 46, 131);
}

obstacle = noone;