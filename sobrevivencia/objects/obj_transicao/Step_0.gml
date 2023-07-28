/// @description Insert description here
// You can write your code in this editor

if(!foi){
	image_alpha+=0.03;
}else{
	image_alpha-=0.03;
}
if(image_alpha>=1){
	room_goto(destino);
	x=0;
	y=0
	image_xscale=room_width*2;
	image_yscale=room_height*2;
	image_alpha=1;
	foi=true
}
if(image_alpha<=0 and foi==true){
	instance_destroy();
}











