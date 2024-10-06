if keyboard_check_pressed(vk_enter) {
    if (instance_exists(obj_chave)) {
        global.tem_chave = true; // Define que o personagem agora tem a chave
        instance_destroy(obj_chave); // Destroi a chave no mundo
        
        // Cria a chave na tela
        instance_create_depth(0, 0, depth, obj_chave_na_tela);

        // Exibe mensagem de coleta
        if (!instance_exists(obj_avisos)) {
            instance_create_depth(x, y, depth, obj_avisos);
        }
        obj_avisos.mensagem = "Você pegou uma chave!";
        audio_play_sound(snd_toque, 1, 0);
    }
}
