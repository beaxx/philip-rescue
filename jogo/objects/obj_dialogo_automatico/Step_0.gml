if (keyboard_check_pressed(ord("E"))) {
        index++;
        if (index >= array_length(dialogo)) {
            dialogo_ativo = false; 
            instance_destroy();
        }
}








