/// @description Insert description here
// You can write your code in this editor
	/*numero = 0;	
	limite = 100;
	*/
	//ESCOPO (O QUE ABRANGE)
	//ESCOPO DE VARIAVEIS
	//VARIAVEIS GLOBAIS PERMANECEM AO JOGO, APOS SEREM CRIADAS
//ELAS CONTINUAM, MSM Q O OBJETO TENHA SITO DESTRUIDO

//SWITCH

//História de detetive
/*perguntar uma senha para pessoa
enquanto a pessoa nao acertar a senha, 
eu vou continuar perguntando

*/

var _per1 ="";
var _r1="cocando o saco";

var _per2 ="";
var _r2=18;

var _per3 ="";
var _r3="vc";
while(true){
	if(_per1!=_r1){
		_per1 = get_string("Voce esta sendo acusado pelo assassinato de michele gayson, aonde vc estava no dia de sua morte?","");
		if(_per1==_r1){
			show_message("eu tbm!");
		}else{
			continue;
		}
	}
	if(_per2!=_r2){
		_per2 = get_integer("Quantos anos voce tem em seu coca saco?","");
		if(_per2==_r2){
			show_message("dezoito... ja podemos fazer amor com o bumbum");
		}else{
			continue;
		}
	}
		_per3 = get_string("claramente vc n e o assassino, entao quem vc acha q e?","");
		if(_per3==_r3){
			show_message("vc acertou!, vou comer seu bumbum agora, hahaha");
			
		}else{
			continue;
		}
	break;
}
/*
while(true){
	var _conta1 = get_integer("Quanto e 1+1?",0);
	if (_conta1==2){
		show_message("acertou, miseravel!");
	
	}else{
		continue;
	}
	var _conta2 = get_integer("Quanto e 3 x 4?",0);
	if (_conta2==12){
		show_message("acertou mizeravi!");
		
	}else{
		continue;
	}
	break;
}
*/
global.cor = c_white
global.texto = "igredientes: ";





