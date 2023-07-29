/// @description Insert description here
// You can write your code in this editor
dis = 50
escrever=false
es_texto = "[E] Fazer compras";


compras = function(){
	if(keyboard_check_pressed(ord("E"))){
		var _posy = sprite_get_height(spr_botao1);
		for(var i =0;i<array_length(global.moveis);i++){
			var _botao = instance_create_layer(room_width/2,30+(_posy*i)+(i*40),"botao",obj_botao1);
			_botao.texto = global.moveis[i][0];	
			_botao.texto1 = global.moveis[i][1];
			if(global.moveis[i][2]!=0){
			_botao.texto2+= "R$"+string(global.moveis[i][2]);
		}
	}
}
}

aponta_player = function(){
		if(instance_exists(obj_player)){
			var _dis = point_distance(x,y,obj_player.x,obj_player.y)
			if(_dis<=dis){
				escrever=true;
				compras();
				//
			}else{
				escrever=false
				if(instance_exists(obj_botao1)){
					obj_botao1.destruicao=true
				}
				//funcionar=false;
			}
		}	
	}