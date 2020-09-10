/// @description Insert description here
// You can write your code in this editor
if(x > room_width){
 x = 0 - sprite_width;	
}else if(x < 0 - sprite_width){
 x = room_width;	
}else if(y < 0 - sprite_height){
	y = room_height;
}else if(y > room_height){
 	y = 0 - sprite_height;
}