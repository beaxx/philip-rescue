if(image_index == 1){
	image_index = 0;
	if (!audio_is_playing(snd_musica)) {
        audio_play_sound(snd_musica, 1, true);
	}// Toca a mú
}else{
image_index = 1;
audio_stop_sound(snd_musica); // Para a música
global.music_playing = false;
}