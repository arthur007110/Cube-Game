/// @description Insert description here
// You can write your code in this editor
light.light[| eLight.X] = -200;
light.light[| eLight.Y] = -200;

with(obj_color_picker){
	if(p_color == other.p_color){
		instance_destroy();
	}
}