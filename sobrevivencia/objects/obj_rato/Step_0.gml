/// @description Insert description here
// You can write your code in this editor
delay--
if(delay<=0)descanso=false
if(descanso==false){
	atacar();
	indo_atacar();
}
if(hspeed!=0&&descanso==false)image_xscale = sign(hspeed);
if(descanso){
	recoil();

}
delay_part--;
var _col = instance_place(x,y,obj_bala)
if(_col){
	if(descanso==false){
		troca=true
		descanso = true;
		delay = room_speed*2;
		recoil();
			
	}
	var _impacto = instance_create_layer(x,y,"efeitos",obj_tiro_impacto);
	//var _dir = point_direction(_impacto.x,_impacto.y,_col.x,_col.y);
	_impacto.sprite_index = spr_explosao;
	instance_destroy(_col);
	
} 

if(vida<1){
	instance_destroy();
}
contato_player();
colidir();