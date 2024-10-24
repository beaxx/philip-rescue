if (global.music_playing) {
	if(room == rm_casa1 || room == rm_quarto || room == rm_quarto_a || room == rm_puzzle1 || room == rm_puzzle2){
    if (!audio_is_playing(snd_musica)) {
        audio_play_sound(snd_musica, 1, true); // Toca a música
    }
	}
}