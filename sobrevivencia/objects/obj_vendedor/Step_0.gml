/// @description Insert description here
// You can write your code in this editor


dis = point_distance(x,y,obj_player.x,obj_player.y);
if(dis<100){	
	
	}else{
		if(instance_exists(obj_botao)){
		obj_botao.destruicao=true
		//instance_destroy(obj_botao);
	}
	
	}
show_debug_message(instance_number(obj_botao));
//conversa();
