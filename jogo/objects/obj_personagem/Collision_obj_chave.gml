if keyboard_check_pressed(ord("E")) {
    if (instance_exists(obj_chave)) {
        global.tem_chave = true; 
        instance_destroy(obj_chave);
        if (!instance_exists(obj_avisos)) {
            instance_create_depth(x, y, depth, obj_avisos);
        }
        obj_avisos.mensagem = "Você pegou uma chave!";
        audio_play_sound(snd_toque, 1, 0);
    }
}
