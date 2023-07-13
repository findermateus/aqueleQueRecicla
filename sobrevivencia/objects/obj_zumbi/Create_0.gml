/// @description Insert description here
// You can write your code in this editor
	
atacar = false;	
atacando = function(){
	if(atacar&&instance_exists(obj_player)){
		var dir = point_direction(x,y,obj_player.x,obj_player.y);
		speed = 4;
		direction = dir;
	}
}
checa_dist = function(){
	if(instance_exists(obj_player)){
		var dis = point_distance(x,y,obj_player.x,obj_player.y);
		if(dis<=300){
			atacar = true;
		}
	}
}





