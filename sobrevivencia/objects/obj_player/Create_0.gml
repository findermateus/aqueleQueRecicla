/// @description Insert description here
// You can write your code in this editor
	tempo = 0
	
	vel = 2;
	//vel_diagonal = vel*0.707;
	velv = 0;
	velh = 0;
	lado = 0;
	//god_mode = false;
	desenhar=true
	cursor_sprite=spr_mouse;
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
				
			/*	if collision_line(x,y,item_prox.x,item_prox.y,obj_col,1,0){
				desenhar=false;
				}else{*/
					if(item_prox.inventario==false)desenhar=true;
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
			var _qtd = instance_number(obj_particle_player);
			if(_qtd<=6){
				var _particula = instance_create_layer(obj_player.x+_pos,obj_player.y+6,"particles",obj_particle_player);	
				_particula.velh=(sign(velh)*-1)*0.5;
				_particula.velv=(sign(velv)*-1)*0.5;
			}
		}
	}
	mira=false;
	ammo = 10;
	r=false;
	tam_mira=1;
	som = true;
	
	arma = function(){
	if(global.inventario_arma[0][1]){
		var _mirando = mouse_check_button(mb_right);
		if(_mirando){
			if(som) audio_play_sound(snd_engatilhar,2,false);
			som=false
			cursor_sprite=cr_none;
			mira =true;
			if(ammo>0){
				if(mouse_check_button_pressed(mb_left)){
					var _som_tiro = audio_play_sound(snd_tiro,1,false);
					ammo--;
					tam_mira = 2;
					var _tiro = instance_create_layer(x+(lado*14),y,layer,obj_bala);
					var _dir = point_direction(_tiro.x,_tiro.y,mouse_x,mouse_y);
					_tiro.direction= _dir
					_tiro.speed=6
					_tiro.image_angle=_dir-90;
				}
			}else{
				if(mouse_check_button_pressed(mb_left))
				{
					var _som = audio_play_sound(snd_sem_bala,3,false);
					//_som =false;
				}
				r = true
				//if(r) audio_play_sound(snd_sem_bala,3,false);
				if(keyboard_check_pressed(ord("R")))
				{
					var _som = audio_play_sound(snd_engatilhar,1,false);
				ammo=10;
				r=false
				}
			}
		}else{
			r=false
			som=true;
			cursor_sprite=spr_mouse;
			//window_set_cursor(spr_mouse)
			mira=false
		}
		
	}
	
	}
		

vendedor = function(){
		if(instance_exists(obj_vendedor)){
			var _dis = point_distance(x,y,obj_vendedor.x,obj_vendedor.y);
			if(_dis<=50){
				if(keyboard_check_pressed(ord("E"))){
					obj_vendedor.conversa()
				}
			}
		}
	
	}	
	
	