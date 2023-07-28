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
	if(morreu=true){
		var _texto = instance_create_layer(obj_player.x,obj_player.y,"texto",obj_texto);
					_texto.cor=c_red;
					_texto.texto="-R$"+string(20);
					_texto.vspeed=-0.5
	//perde_dinheiro()
	}
	instance_destroy();
}











