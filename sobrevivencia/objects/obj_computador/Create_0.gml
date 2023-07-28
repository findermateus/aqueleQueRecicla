/// @description Insert description here
// You can write your code in this editor
dis = 30
escrever=false
texto = "[E] Fazer compras";
texto[0][0] = "Vender";
texto[1][0] = "Sair";

compras = function(){
	if(keyboard_check_pressed(ord("E"))){
		//fazer oq tem q ser feito
	}

}


aponta_player = function(){
		if(instance_exists(obj_player)){
			var _dis = point_distance(x,y,obj_player.x,obj_player.y)
			if(_dis<=dis){
				escrever=true
				compras();
				//
			}else{
				escrever=false
				//funcionar=false;
			}
		}	
	}