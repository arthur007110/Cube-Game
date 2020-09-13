/// @description Insert description here
// You can write your code in this editor
if(total_player1 > total_player2){
	win = "Player 1";
	stage_clear = 1;
	obj_room_mananger.stage_clear = 1;
	obj_room_mananger.alarm[1] = room_speed * 2;
}else if(total_player2 > total_player1){
	win = "Player 2";
	stage_clear = 1;
	obj_room_mananger.stage_clear = 1;
	obj_room_mananger.alarm[1] = room_speed * 2;
}else{
	win = "DRAW!";
	stage_clear = 1;
	obj_room_mananger.stage_clear = 1;
	obj_room_mananger.alarm[1] = room_speed * 2;
}