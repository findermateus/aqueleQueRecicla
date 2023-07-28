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
