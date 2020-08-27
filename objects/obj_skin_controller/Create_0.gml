/// @description Insert description here
// You can write your code in this editor
coins = 0;
player_skin  = spr_player;

scr_load_game();

h_gap = (room_width - 400)/4;
v_gap = (room_height - 300)/4;

skins = [
spr_player,
spr_player_skin03,
spr_player_skin02,
spr_player_skin01,
spr_player_skin04,
spr_player_skin05,
spr_player_skin06,
spr_player_skin07,
spr_player_skin08,
spr_player_skin09,
spr_player_skin10,
spr_player_skin11,
spr_player_skin12,
spr_player_skin13
];

index = 0;
for(var i = 0; i < 8; i++){
	for(var j = 0; j < 5; j++){
		try{
			if(skins[index] != noone){
				obj = instance_create_depth((j * h_gap) + 200, (i * v_gap) + 250, -100, obj_button_skin_selection);
				obj.skin = skins[index];
				obj.skin_id = index+1;
				index++;
			}
		}catch(e){
			e = noone;
			break;
		}
	}
}