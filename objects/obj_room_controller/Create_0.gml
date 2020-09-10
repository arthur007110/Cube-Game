/// @description Insert description here
// You can write your code in this editor

show_info = false;

stage_clear = false;

if(!global.multiplayer){
	show_points = false;

	total_coins = 15;

	room_time = 10;

	border = 200;

	coins = total_coins;

	added_coins = false;

	alarm[0] = room_speed * room_time;
}else{
	total_player1 = 0;
	total_player2 = 0;
	win = "";
	alarm[2] = room_speed * 15;
}