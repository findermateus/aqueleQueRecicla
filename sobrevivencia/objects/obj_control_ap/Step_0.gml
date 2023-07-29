/// @description Insert description here
// You can write your code in this editor
for(var i=0;i<array_length(global.moveis)-1;i++){
		if(!obj_criado[i]){
			if(global.moveis[i][3]==true){
				var _movel = instance_create_layer(0,0,"moveis",obj[i]);
				obj_criado[i]=true
				if(!global.iniciou[i]=true){
					_movel.image_alpha=0;
					switch(i){
						case 0:
							global.vel+=1;
						break;
						case 1:
							global.ammo_max+=5;
						break;
						case 2:
							global.vida_max++
						break
					
					}
					
				}
				global.iniciou[i]=true;
			}
		}
	
	}