/// @description Insert description here
// You can write your code in this editor
if(!foi){
	if(image_alpha<1){
		image_alpha+=0.03;	
	}
if(image_alpha>=1) image_alpha=1;

}
if(foi){
	image_alpha-=0.03;
}


if(image_alpha<=0 and foi==true){
	instance_destroy();
}











