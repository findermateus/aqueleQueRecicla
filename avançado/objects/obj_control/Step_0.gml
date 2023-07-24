/// @description Insert description here
// You can write your code in this editor
	
	var right,left,up,down;
	
	right = keyboard_check_pressed(vk_right);
	left = keyboard_check_pressed(vk_left);
	up = keyboard_check_pressed(vk_up);
	down = keyboard_check_pressed(vk_down);
			
	//categorias
	if(right){categoria++; item=1;}
	if(left){categoria--; item=1;}
	if(categoria<0)categoria=2;
	if(categoria>array_length(inventario)-1)categoria=0;
	//categoria = clamp(categoria,0,array_length(inventario)-1);
	
	var _tam = array_length(inventario[categoria]);
	//itens
	if(up)item--;
	if(down)item++;
	show_debug_message(_tam);
	

	//if(item<1)item=array_length(inventario);
	//if(item>_tam)item=1;
	
	item = clamp(item,1,_tam-1);
	
	
//numero++;
//numero %=limite;
	if keyboard_check_pressed(vk_enter) room_restart();







