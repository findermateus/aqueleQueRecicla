/// @description Insert description here
// You can write your code in this editor

texto = ""
crescendo = true
image_xscale=0;
image_yscale=image_xscale;
som = true
destruicao = false
destruir= function(){
	if(destruicao){
		obj_botao.image_xscale-=0.1
		obj_botao.image_yscale = obj_botao.image_xscale
		if(obj_botao.image_xscale<=0){
			
			instance_destroy(obj_botao,true);
		}
	}
}
determina = function(){
var _mouse_sobre = position_meeting(mouse_x,mouse_y,id);
var _mouse_click = mouse_check_button_released(mb_left);

if(_mouse_sobre){

	if(texto!="Vender"){
		image_xscale=1.2;
		image_yscale = image_xscale;
		if (som) audio_play_sound(snd_botao,1,false);
	}else{
			if(global.valor<=0){
			image_alpha=.5
	}else{
		image_xscale=1.2;
		image_yscale = image_xscale;
		if (som) audio_play_sound(snd_botao,1,false);
	}
}
	
	
		som =false
		if(_mouse_click){
			switch(texto){
			case "Vender":
				for(var i =0;i<array_length(global.inventario_venda);i++){

					global.inventario_venda[i][1]=0;
				}
				if(global.valor!=0){
				var _texto = instance_create_layer(obj_player.x+7,(obj_player.y+10),layer,obj_texto);
					_texto.cor=c_green;
					_texto.texto="+R$"+string(global.valor);
					_texto.vspeed=-0.5
				}
				global.dinheiro+=global.valor;
				global.valor = 0
				
				break;
			case "Sair":
				destruicao =true;
				break;
			}
		}
	}else{
	som =true;
	}
}