/// @description shoot

bullet = instance_create_layer(x + sprite_width/2, y - 5, "inst_Player", obj_bullet);
bullet.direction = 90;

bullet = instance_create_layer(x + sprite_width/2, y + 5 + sprite_height, "inst_Player", obj_bullet);
bullet.direction = 270;

alarm[0] = room_speed * shoot_time;