if inicializar {
    if caractere < string_length(texto_grid[# INFOS.TEXTO, index]) {
        audio_play_sound(texto_grid[# INFOS.SOM, index], 1, 0);
        caractere++;
        alarm[0] = 2;

    }
}
