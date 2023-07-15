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
			if(keyboard_check(ord("E"))){
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
	colidir = function(){
		var _col = instance_place(x+velh,y,obj_col);
		if(_col){
			if(velh>0){
			//indo para direita
				x= _col.bbox_left + (x-bbox_right);
				velh = 0;
			}else if(velh<0){
				x= _col.bbox_right +(x-bbox_left)
				velh =0;
			}
			
		}
		_col = instance_place(x,y+velv,obj_col);
		if(_col){
			//subindo
			if(velv<0){
			//subindo
				y = _col.bbox_bottom +(y-bbox_top);
				velv=0;
			}else if(velv>0){
			//indo para baixo
				y=_col.bbox_top +(y-bbox_bottom);
				velv =0;
			}
		}
	}
	