if(!instance_exists(obj_control)) instance_create_layer(0,0,"control",obj_control);
if(!instance_exists(obj_control_ap)) instance_create_layer(0,0,"control",obj_control_ap);
audio_stop_sound(snd_luta);

if(!variable_global_exists("inicio")){
	global.inicio=true;

}
global.hostil = false
if(!instance_exists(obj_player)) instance_create_layer(room_width/2,room_height/2,"player",obj_player);

if(global.inicio==false){
	obj_player.x = 20;
	obj_player.y = 150;
}
global.lugar = 0;
if(!variable_global_exists("sono")){
	global.sono = false
}
	
	