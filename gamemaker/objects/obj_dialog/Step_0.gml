if inicializar == false{
	scr_textos();
	inicializar = true;
}


if keyboard_check_pressed(vk_enter){
	if pagina < array_length(texto) - 1{
		pagina++;
	}
	else{
		instance_destroy();
		room_goto(inicio);
	} 
}

