/// @description Insert description here
// You can write your code in this editor
if(frist_exec && instance_exists(obj_skin_controller)){
	obj_skin_controller.spray_color = colors[0];
	frist_exec = false;
}
if(room != rm_skin_selection){
	instance_destroy();
}