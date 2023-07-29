/// @description Insert description here
// You can write your code in this editor

texto = "";
texto1 = "";
texto2 = "";
crescendo = true
desc = false;
image_xscale=0;
image_yscale=image_xscale;
som = true
destruicao = false
destruir= function(){
	if(destruicao){
		obj_botao1.image_xscale-=0.1
		obj_botao1.image_yscale = obj_botao1.image_xscale
		if(obj_botao1.image_xscale<=0){
			
			instance_destroy(obj_botao1,false);
		}
	}
}
determina = function(){
var _mouse_sobre = position_meeting(mouse_x,mouse_y,id);
var _mouse_click = mouse_check_button_released(mb_left);

if(_mouse_sobre){
		desc = true;
		image_xscale=1.2;
		image_yscale = image_xscale;
		if (som) audio_play_sound(snd_botao,1,false);
	
		som =false
		if(_mouse_click){
			switch(texto){
			case "Sair":
				destruicao =true;
			break;
			case "Sofá":
				show_message(texto);
			break;
			case "Televisão":
				show_message(texto);
			break;
			case "Geladeira":
				if(!instance_exists(obj_geladeira)){
					instance_create_layer(464,64,"moveis",obj_geladeira);
				}

			break;
			}
		}
	}else{
	desc =false
	som =true;
	}
}