/// @description Insert description here
// You can write your code in this editor
if(increase){
	size += 0.05;
}

if(decrease){
	size -= 0.05;
}

if(size == 1.2){
	increase = false;
}

if(size == 1){
	decrease = false;
}

if(locked){
	
	var unlock = false;
	
	if(global.level >= level_id - 1) unlock = true;
	
	if(unlock){
		locked = false;
	}
}