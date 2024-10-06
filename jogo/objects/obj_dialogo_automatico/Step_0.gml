if (keyboard_check_pressed(vk_enter)) {
        index++;
        if (index >= array_length(dialogo)) {
            dialogo_ativo = false; 
            instance_destroy();
        }
}








