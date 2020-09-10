/// @description Insert description here
// You can write your code in this editor
if(increase){
	size += 0.05;
}

if(decrease){
	size -= 0.05;
}

if(size == 1.3){
	increase = false;
}

if(size == 1){
	decrease = false;
}

image_xscale = size;
image_yscale = size;