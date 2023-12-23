      // abrindo portas
if (keyboard_check_pressed(vk_enter)) {
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
            if (tem_chave) {
				audio_play_sound(snd_destrancando, 1, 0);
                _porta.tipo_porta = "normal"; // Abre a porta trancada
            } else {
				 if (!instance_exists(obj_avisos)) {
					instance_create_depth(x, y, depth, obj_avisos);
				 }obj_avisos.mensagem = "Esta porta está trancada!";
            }
        } else if (_porta.tipo_porta == "ruidosa") {
			if (!audio_is_playing(snd_nocking_door)) {
			audio_play_sound(snd_nocking_door,1,0);
			}
        } else if (_porta.tipo_porta == "puzzle"){
			room_goto(rm_puzzle2);
			obj_personagem.persistent = false;}
    }
}
