if (room != previous_room) {
    // Código para parar a música da sala anterior
    audio_stop_all();
    // Código para tocar a música da nova sala
    if (room == rm_florest) {
        audio_play_sound(snd_floresta_musica, 1, true);
    } 
}

previous_room = room;


