/// @description Insert description here
// You can write your code in this editor



if(crescendo){
image_xscale+=.08;
image_yscale=image_xscale;
}
if(image_xscale>=1){
	image_xscale=1;
	crescendo=false;
}
if(image_yscale>=1)image_yscale=1;



determina();
destruir();