/// @description Insert description here
// You can write your code in this editor
texto[0][0] = "Vender";
texto[1][0] = "Sair";

conversa = function(){

			var _tam = sprite_get_height(spr_botao);
			var _posx=x-(_tam*3),_posy=y+60,
			if(!instance_exists(obj_botao)){
			for(var i=0;i<array_length(texto);i++){
				var _botao = instance_create_layer(_posx,_posy+(i*_tam),"botao",obj_botao);
				_botao.texto=texto[i][0];
				_posy+=20;
			}
			}
		}
		
	


