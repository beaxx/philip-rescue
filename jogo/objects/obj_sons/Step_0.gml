if (global.music_playing) {
    if (room == rm_cut) {
        // Verifica se o som de corte não está tocando
        if (!audio_is_playing(snd_cut)) {
            audio_play_sound(snd_cut, 1, false);
        }
    } else {
        // Para o som de corte se estiver tocando
        if (audio_is_playing(snd_cut)) {
            audio_stop_sound(snd_cut);
        }

        // Toca a música se não estiver tocando
        if (!audio_is_playing(snd_musica)) {
            audio_play_sound(snd_musica, 1, true); // Toca a música
        }
    }
}
