if (!inicializar) {
        scr_textos();
        inicializar = true;
        alarm[0] = 2;
    }
    
    if (keyboard_check_pressed(vk_enter)) {
        if (caractere < string_length(texto_grid[# INFOS.TEXTO, index])) {
            caractere = string_length(texto_grid[# INFOS.TEXTO, index]);
        } else {
            alarm[0] = 2;
            caractere = 0;
            if (index < ds_grid_height(texto_grid) - 1) {
                index++
            } else {
                global.dialogo = false;
                instance_destroy();
                obj_personagem.dialogo_ativo = false;
            }
        }
    }