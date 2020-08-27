/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(5, 5, 5));
var x1, x2, y1, y2;
x1 = camera_get_view_x(view_camera[0]) + left;
x2 = camera_get_view_x(view_camera[0]) + right;
y1 = camera_get_view_y(view_camera[0]);
y2 = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]);
right += 15 * animation_speed;
left += (15 * stagetwo) * animation_speed;

draw_rectangle(x1, y1, x2, y2, 0);

if(right > camera_get_view_width(view_camera[0]) + 150 && !stagetwo){
	stagetwo = 1;
	room_goto(goal);
}

if(left > camera_get_view_width(view_camera[0]) + 50){
	instance_destroy();
}
