/// @description Insert description here
// You can write your code in this editor
	vel = 5;
	velv = 0;
	velh = 0;
	god_mode = false;
	desenhar=true
	coletar = function(){
		if(instance_exists(obj_item_pai)){
		item_prox = instance_nearest(x,y,obj_item_pai);
		dis = point_distance(x,y,item_prox.x,item_prox.y);
		if (dis<=global.distancia){
			if(keyboard_check_pressed(ord("E"))){
			item_prox.inventario =true;;
			desenhar=false;
			}
		 }
		}
	}
	
	fica_nomapa = function(){
	x =clamp(x,16,room_width-16);
	y =clamp(y,16,room_height-16);
	}
	