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


switch(texto){
			case "Sofá":
			if(global.moveis[0][3]){
				image_alpha = .5
			
			}
				
			break;
			case "Televisão":
			if(global.moveis[1][3]){
				image_alpha = .5
			
			}

			break;
			case "Geladeira":
				if(global.moveis[2][3]){
				image_alpha = .5
			
			}

			break;

			}