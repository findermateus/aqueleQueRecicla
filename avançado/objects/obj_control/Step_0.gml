/// @description Insert description here
// You can write your code in this editor
	
	var right,left,up,down;
	
	right = keyboard_check_pressed(vk_right);
	left = keyboard_check_pressed(vk_left);
	up = keyboard_check_pressed(vk_up);
	down = keyboard_check_pressed(vk_down);
	
	//categorias
	if(right){categoria++; item=1;}
	if(left){categoria--; item=0}
	if(categoria<0)categoria=2;
	if(categoria>array_length(inventario)-1)categoria=0;
	//categoria = clamp(categoria,0,array_length(inventario)-1);
	
	//itens
	if(up)item--;
	if(down)item++;
	
	if(item<1)item=3;
	if(item>array_length(inventario))item=1;
	//item = clamp(item,1,array_length(inventario));
	
	
//numero++;
//numero %=limite;







