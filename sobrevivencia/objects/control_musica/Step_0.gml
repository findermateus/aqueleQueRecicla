/// @description Insert description here
// You can write your code in this editor
if(global.hostil){
	if(toca_luta==true)
	{
	audio_stop_sound(snd_music_ap);
	audio_play_sound(snd_luta,3,true);
	toca_luta=false;
	}
}else{
	if(!toca_luta){
		audio_stop_sound(snd_luta);
		audio_play_sound(snd_music_ap,3,true);
		toca_luta=true;
	}

}












