//mato = false;
global.hostil = false
global.inicio = false
if(!instance_exists(obj_player)){
	switch(global.lugar){
		case 0:
		instance_create_layer(335,140,"player",obj_player);
		break;
		case 1:
		instance_create_layer(20,150,"player",obj_player);
		break
	}
}
var lay_id = layer_get_id("noite");
var back_id = layer_background_get_id(lay_id);

if(!global.sono){
	layer_background_alpha(back_id,0);
}else{
	layer_background_alpha(back_id,.4);
}
