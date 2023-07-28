/// @description Insert description here
// You can write your code in this editor
dis = 20;
desenha=false
texto = "Sair";
destino = room;
trabalhar=false;
chama_player = function(){
	if(!trabalhar){
		if(instance_exists(obj_player))
		{
		var _col = instance_place(x,y,obj_player);
		if(_col){
			desenha=true
	
		}else{
			desenha=false;
		}

		}
	}else{
	if(global.sono==false){
		if(instance_exists(obj_player))
		{
		var _col = instance_place(x,y,obj_player);
		if(_col){
			desenha=true
	
		}else{
			desenha=false;
		}

		}
	}
	}
}












