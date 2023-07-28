/// @description Insert description here
// You can write your code in this editor

if(!global.hostil){
	chama_player();
}else{
	if(global.valor!=0){
		chama_player();
	}
}
if(!trabalhar)
{
	if(desenha){
		if(keyboard_check_pressed(vk_space)){
		if(!instance_exists(obj_transicao)){
		var _trans = instance_create_layer(0,0,"trans",obj_transicao);
		_trans.destino=destino;
		}
		}
	}
}else{if(global.sono==false){
	if(desenha){
		if(keyboard_check_pressed(vk_space)){
		var _trans = instance_create_layer(0,0,"trans",obj_transicao);
		_trans.destino=destino;
		}
	}

}


}










