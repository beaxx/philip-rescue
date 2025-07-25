if (keyboard_check_pressed(ord("E"))) {
    if (place_meeting(x, y, obj_porta)) {
        var _porta = instance_nearest(x, y, obj_porta);
        if (_porta.tipo_porta == "normal") {
            if (!_porta.tem_chave) {
				audio_play_sound(snd_porta_abrindo,1,0);
              room_goto(other.sala);
				x = other.personagemx;
				y = other.personagemy;
            } else {
                show_message("Esta porta está trancada!");
            }
        } else if (_porta.tipo_porta == "trancada") {
            if (global.tem_chave) {
				audio_play_sound(snd_destrancando,1,0);
				 room_goto(other.sala);
				x = other.personagemx;
				y = other.personagemy;
				
				var _chave_na_tela = instance_find(obj_chave_tela, 0);
                if (_chave_na_tela) {
                    instance_destroy(_chave_na_tela);
                }
				global.tem_chave = false;
				
            } else {
				 if (!instance_exists(obj_avisos)) {
					instance_create_depth(x, y, depth, obj_avisos);
				 }obj_avisos.mensagem = "Esta porta está trancada!";
            }
        } else if (_porta.tipo_porta == "ruidosa") {
			if (!audio_is_playing(snd_nocking_door)) {
			audio_play_sound(snd_nocking_door,1,0);
			if (!instance_exists(obj_avisos)) {
			instance_create_layer(x, y, "Dialogo", obj_avisos);
				 }obj_avisos.mensagem = "Este é o quarto dos meus pais...";
			}
        } else if (_porta.tipo_porta == "puzzle"){
			room_goto(rm_puzzle2);
			obj_personagem.persistent = false;}
    }
}
