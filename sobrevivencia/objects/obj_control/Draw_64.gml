/// @description Insert description here
// You can write your code in this editor
	var texto = "Comida: "+string(global.comida);
	var posx = 30;
	draw_set_font(fnt_ui)
	repeat(2){
	draw_text(posx,600,texto);
	texto = "Água: "+string(global.agua);
	posx+=150;
	}
	draw_set_font(-1);