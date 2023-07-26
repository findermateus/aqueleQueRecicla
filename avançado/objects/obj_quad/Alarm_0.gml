/// @description Insert description here
// You can write your code in this editor

if(pai==noone){
	pai=id;
	image_blend=c_red;
	var _filho = instance_create_layer(x+(sprite_width+10),y,layer,obj_quad);
	_filho.pai = pai;
	_filho.qtd=qtd-1;

}
else{
	if (qtd>0){
		var _filho = instance_create_layer(x+(sprite_width+10),y,layer,obj_quad);
		_filho.pai = pai;
		_filho.qtd = qtd-1;
	
	}else{
		pai.image_blend=c_lime;
	
	}


}







