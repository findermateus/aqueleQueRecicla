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

//Sequencia de Fibonacci
//1,1,2,3,5,8,13,21...
*/
/*
var _indice,n1,n2,n3;
_indice =1;
n1 =1;
n2 =0;
n3=0;
while(_indice<20){
	
	n3=n1+n2;

	n1 = n2;
	n2 = n3;
	
	
	show_message(n3);
	_indice++;
}
*/
/*
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
/*
var _n1,_r;
for(var i=0;i<10;i++){
	_n1 =2;
	_r = i*_n1;
	
	show_message(_r);

}
*/
//laços de repetição aninhados.
/*
for(var i=0;i<=10;i++){
	for(var j=0;j<=10;j++){
		show_debug_message(string(i)+" x "+string(j)+" = "+string(i*j));
	}
}
*/
/*
notas= [];
var i= 0;
var soma=0,r;
while(true){
	var _add=show_question("voce gostaria de adicionar uma nota?");
	if(_add){
		notas[i]=get_integer("Digite a nota "+string(i+1),"");
		i++;
		continue;
	}else{
		break;
	}
}
for(i=0;i<array_length(notas);i++){
	soma+=notas[i];
}
show_message(soma);
r=soma/i;
*/

//categorias




//armas
inventario[0][0] = "Armas";
inventario[0][1] = "Espada";
inventario[0][2] = "Porrete de pau";
inventario[0][3] = "Arco Dos Deuses";

//itens
inventario[1][0] = "Itens";
inventario[1][1] = "Olhos de Troll";
inventario[1][2] = "Semente de banana";
inventario[1][3] = "Salsicha sagrada";
inventario[1][4] = "eita cuzinho";

//equipamentos
inventario[2][0] = "Equipamentos";
inventario[2][1] = "Capacete";
inventario[2][2] = "Cinto de pele de cobra de 5000000000 metros";
inventario[2][3] = "Sapato de cabeça de bagre";
inventario[2][4] = "Pintinho Piu";
//CATEGORIA

//ITEM DA CATEGORIA
categoria=0;
item=0;

/*Estrutura do quiz:
	quanto é um mais um?	qual a capital do brasil
	1						seila7
	2						dkska
	3						dkcnqn
	4						kmfew

*/
quiz [0][0] = "Quanto e 1 + 1?";
quiz [0][1] = 2;
quiz [0][2] = 11;
quiz [0][3] = 3;
quiz [0][4] = 4;

quiz [1][0] = "Qual a capital do meu pau?";
quiz [1][1] = "brasilian from brasil";
quiz [1][2] = "eita como joga";
quiz [1][3] = "uma morena";
quiz [1][4] = "bilu";


quiz [2][0] = "Quanto é 3x2?";
quiz [2][1] = 6;
quiz [2][2] = 3;
quiz [2][3] = 4;
quiz [2][4] = 5;


pergunta = irandom(array_length(quiz)-1);


var _tam = array_length(quiz[pergunta]);
var _res = irandom(_tam);
//var _perg = irandom_range
global.texto=quiz[pergunta][0];

for(var i=1;i<_tam;i++){
	var _botao = instance_create_layer(i*(sprite_get_width(spr_botao)+40),(room_height/2)-(sprite_get_height(spr_botao)/2),layer,obj_botao);
	
	_res%=_tam-1; 
	if(_res<1) _botao.correto =true;
	_botao.texto = quiz[pergunta][_res+1];
	_res++;

}
global.cor = c_white
/*
frutas = ["morango","banana","laranja","uva","limao"];

//dividindo a room em linhas e colunas com base no tamanho da minha sprite do botao
//pegando as dimensoes da sprite do botao
var _larg = sprite_get_width(spr_botao);
var _alt = sprite_get_height(spr_botao);

var _colunas = room_width div _larg;
var _linhas = room_height div _alt;


var _espaco = 46;
tabela = [];
var _tam = irandom(array_length(frutas)-1);
for(var i=0;i<_linhas;i++){
	
		for(var j=0;j<_colunas;j++){
			if(i%2){
			tabela[i][j] = string(i)+","+string(j);
			var _botao = instance_create_layer(_espaco+(_larg*j),_alt*i,layer,obj_botao);
			var _indice = j%array_length(frutas);
			_botao.texto = frutas[_indice];
		}
	}
}

