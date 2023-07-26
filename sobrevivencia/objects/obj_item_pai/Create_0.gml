/// @description Insert description here
// You can write your code in this editor
texto = "";
pegar = false
timer = 1;
inventario=false;
angulo = random(364);
image_angle= angulo;
indo_inventario = function(){
	if instance_exists(obj_player){
		if(inventario==true){
			var	_dir = point_direction(x,y,obj_player.x,obj_player.y);
			var _dis = point_distance(x,y,obj_player.x,obj_player.y);
			direction=_dir;
			speed =4;
			image_xscale-=.1;
			image_yscale-=.1;
			if(_dis<=10){
			instance_destroy(id,true);
			}
		}
	
	}

}
vel =0;





