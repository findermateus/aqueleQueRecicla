/// @description Insert description here
// You can write your code in this editor
	
	var _mouse_sobre = position_meeting(mouse_x,mouse_y,id);
	var _clique = mouse_check_button_pressed(mb_left);
	if (_mouse_sobre){

		image_alpha=1;
		if(_clique){
			//global.texto=texto
			global.cor=cor;
			
			if(correto){
				audio_play_sound(snd_michael,1,false);
				show_message("parabuains!");
				cor = c_green
				//show_message(obj_control.quiz[global.pergunta][0])
				global.pergunta++;
				global.pergunta%=3;
				//room_restart();
				room_restart();
			}else{
				cor=c_red;
			}
			
		}
	}else{
		image_alpha=.5;

	} 
	image_blend = cor;
/*switch(texto){
	case "morango":
		cor = c_red;
		break;
	case "banana":
		cor = c_yellow;
		break;
	case "limao":
		cor = c_lime;
		break;
	case "laranja":
		cor = c_orange;
		break;
	case "uva":
		cor = c_purple;
		break;
	default:
		cor =c_white;
}

	

	




