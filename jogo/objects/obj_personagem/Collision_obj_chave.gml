if (instance_exists(obj_chave) && !tem_chave) {
    tem_chave = true;
    instance_destroy(obj_chave); // Destruir a chave após coletar (opcional)
    if (!instance_exists(obj_avisos)) {
		instance_create_depth(x, y, depth, obj_avisos);
	}obj_avisos.mensagem = "Você pegou uma chave!";
    audio_play_sound(snd_toque,1, 0);
}



