/// @description Insert description here
// You can write your code in this editor
	vel = 2;
	//vel_diagonal = vel*0.707;
	velv = 0;
	velh = 0;
	//god_mode = false;
	desenhar=true
	
	troca_sprite = function(){
		if(velv<=0)
		{
			sprite_index=spr_player_up;
		}
		if(velh!=0&&velv==0){
			sprite_index=spr_player_diagonal;
		}
		if(velv>0) 
		{
		sprite_index=spr_play_down;
		}
		if(velv==0&&velh==0) sprite_index = spr_player_iddle;
	}
	coletar = function(){
		if(instance_exists(obj_item_pai)){
		
		item_prox = instance_nearest(x,y,obj_item_pai);
		
		dis = point_distance(x,y,item_prox.x,item_prox.y);
			
			if (dis<=global.distancia){
				if collision_line(x,y,item_prox.x,item_prox.y,obj_col,1,0){
				desenhar=false;
				}else{
					desenhar=true;
					if(keyboard_check(ord("E"))){
				//
				item_prox.inventario =true;;
				desenhar=false;
			}
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
			}else if(velh<0){
				x= _col.bbox_right +(x-bbox_left)
			}
			velh = 0;
		}
		_col = instance_place(x,y+velv,obj_col);
		if(_col){
			//subindo
			if(velv<0){
			//subindo
				y = _col.bbox_bottom +(y-bbox_top);
				
			}else if(velv>0){
			//indo para baixo
				y=_col.bbox_top +(y-bbox_bottom);
				
			}
			velv=0;
		}
	}
	
	cria_particula = function(){
		if(velv!=0||velh!=0){
			var _pos = random_range(6,-6);
			var _particula = instance_create_layer(obj_player.x+_pos,obj_player.y+6,"particles",obj_particle_player);	
			_particula.velh=(sign(velh)*-1)*0.5;
			_particula.velv=(sign(velv)*-1)*0.5;
		}
	}