/// @description Insert description here
// You can write your code in this editor
scr_load_game();

h_gap_levels = (room_width - 400)/4;
v_gap_levels = (room_height - 200)/4;

levels = [
	spr_level01,
	spr_level03,
	spr_level04,
	spr_level05,
	spr_level06,
	spr_level07,
	spr_level08,
	spr_level09,
	spr_level10,
	spr_level11,
	spr_level12,
	spr_level13,
	spr_level14,
	spr_level15,
	spr_level16,
	spr_level17,
	spr_level18,
	spr_level19,
	spr_level20,
	spr_level21,
	spr_level22,
	spr_level23
];

index = 0 + (15 * global.level_page);
count = 0;
for(var i = 0; i < 8; i++){
	for(var j = 0; j < 5; j++){
		try{
			if(count >= 15) exit;
			
			if(index < array_length(levels)){
				obj = instance_create_depth((j * h_gap_levels) + 200, (i * v_gap_levels) + 200, -100, obj_button_level_selection);
				obj.level_id = index+1;
				index++;
				count++;
			}
		}catch(e){
			show_message(e);
			e = noone;
			break;
		}
	}
}