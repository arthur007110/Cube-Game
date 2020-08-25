/// @description shoot

bullet = instance_create_layer(x + 5 + sprite_width, y + sprite_height/2, "inst_Player", obj_bullet);
bullet.direction = 0;

bullet = instance_create_layer(x - 5, y + sprite_height/2, "inst_Player", obj_bullet);
bullet.direction = 180;

alarm[0] = room_speed * shoot_time;