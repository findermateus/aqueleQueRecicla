if(!instance_exists(obj_control)) instance_create_layer(0,0,"control",obj_control);
global.hostil = false
if(!instance_exists(obj_player)) instance_create_layer(room_width/2,room_height/2,"player",obj_player);
obj_player.x = 20;
obj_player.y = 150;
global.lugar = 0;
if(!variable_global_exists("sono")){
	global.sono = false
}