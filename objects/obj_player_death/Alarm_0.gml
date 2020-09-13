/// @description Insert description here
// You can write your code in this editor

b_direction = 0;

while(true){
	if(b_direction = 360) break;
	b = instance_create_layer(x,y, "inst_Player", obj_player_death_effect);

	b.direction = b_direction;

	b_direction += 45;
}

alarm[0] = room_speed/4;