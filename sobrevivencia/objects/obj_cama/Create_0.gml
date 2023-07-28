/// @description Insert description here
// You can write your code in this editor
funcionar=false;
dis = 25
escrever=false
texto = "";
aponta_player = function(){
		if(instance_exists(obj_player)){
			var _dis = point_distance(x,y,obj_player.x,obj_player.y)
			if(_dis<=dis){
				escrever=true
				//
			}else{
				escrever=false
				//funcionar=false;
			}
		}	
	}
	
dormir = function(){
	if(keyboard_check_pressed(ord("E"))){
		global.dia+=1;
		global.sono=false;
		var _trans = instance_create_layer(0,0,"trans",obj_trans_dia);
		_trans.image_alpha=0;
	}

}











