function scr_sidefade(argument0, argument1) {
	var fade;
	fade = instance_create_depth(0, 0, -100, obj_sidefade);
	fade.goal =	argument0;
	fade.animation_speed = argument1;
}
