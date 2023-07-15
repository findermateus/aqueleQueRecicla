/// @description Insert description here
// You can write your code in this editor

direcao = random(364)
vel = random_range(0.5,2);
speed= vel;
direction= direcao;
atacar = false;	
troca_direcao = function(){
	if(atacar==false){
		if(x+sprite_width/2>room_width)hspeed*=-1;
		if(x-sprite_width/2<0)hspeed*=-1;
		if(y+sprite_height/2>room_height)vspeed*=-1;
		if(y-sprite_height/2<0)vspeed*=-1;
	}
}

atacando = function(){
	if(atacar&&instance_exists(obj_player)){
		var dir = point_direction(x,y,obj_player.x,obj_player.y);
		speed = 6;
		direction = dir;
	}
}
checa_dist = function(){
	if(instance_exists(obj_player)){
		var _dis = point_distance(x,y,obj_player.x,obj_player.y);
		if(_dis<=300){
			atacar = true;
		}
	}
}

colide = function(_obj){
	if(instance_exists(_obj)){
	
	}

}



