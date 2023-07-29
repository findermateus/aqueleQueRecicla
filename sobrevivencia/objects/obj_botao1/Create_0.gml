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
som_click = true;




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
			if(global.dinheiro>=global.moveis[0][2])
			{
				if(!instance_exists(obj_sofa)){
					audio_play_sound(snd_din,1,false);
					//som_click=false
					image_alpha=.5
					global.dinheiro-=global.moveis[0][2];
					var _texto =instance_create_layer(obj_player.x+5,obj_player.y,"texto",obj_texto);
					_texto.cor=c_red;
					_texto.texto="-R$"+string(global.moveis[0][2]);
					_texto.vspeed=-0.5
					
					global.moveis[0][3] = true
				//show_message(texto);
				}
			}
			break;
			case "Televisão":
			if(global.dinheiro>=global.moveis[1][2]){
				if(!instance_exists(obj_tv)){
					audio_play_sound(snd_din,1,false);
					image_alpha=.5
					global.dinheiro-=global.moveis[1][2];
					var _texto =instance_create_layer(obj_player.x+5,obj_player.y,"texto",obj_texto);
					_texto.cor=c_red;
					_texto.texto="-R$"+string(global.moveis[1][2]);
					_texto.vspeed=-0.5
					global.moveis[1][3] = true
				}
			}
			break;
			case "Geladeira":
				if(global.dinheiro>=global.moveis[2][2]){
				if(!instance_exists(obj_geladeira)){
					audio_play_sound(snd_din,1,false);
					image_alpha=.5
					global.dinheiro-=global.moveis[2][2];
					var _texto =instance_create_layer(obj_player.x+5,obj_player.y,"texto",obj_texto);
	
					_texto.cor=c_red;
					_texto.texto="-R$"+string(global.moveis[2][2]);
					_texto.vspeed=-0.5
					global.moveis[2][3] = true
				}
			}

			break;

			}
		}
	}else{
	desc =false
	som =true;
	}
}

