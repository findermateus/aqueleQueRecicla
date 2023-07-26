/// @description Insert description here
// You can write your code in this editor
	var _posx=20,_posy=200;
	draw_set_font(fnt_display);
	for(var i=0;i<array_length(global.inventario_comida);i++){
		draw_text(_posx,_posy,string(global.inventario_comida[i][0])+": "+string(global.inventario_comida[i][1]));
		_posy+=50;
	}
	
	draw_set_font(-1);