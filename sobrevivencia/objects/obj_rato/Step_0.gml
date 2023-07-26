/// @description Insert description here
// You can write your code in this editor
colidir();
atacar();

var _col = instance_place(x,y,obj_bala)
if(_col){
	vida--;
	/*
	var _impacto = instance_create_layer(x,y,"efeitos",obj_tiro_impacto);
	//var _dir = point_direction(_impacto.x,_impacto.y,_col.x,_col.y);
	_impacto.sprite_index = spr_explosao;
	instance_destroy(_col);
	*/
} 

if(vida<1){
	instance_destroy();
}