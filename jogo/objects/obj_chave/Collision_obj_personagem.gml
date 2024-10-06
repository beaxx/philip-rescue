if keyboard_check_pressed(vk_enter){
	if (!global.tem_chave) {
	    global.tem_chave = true;
	    instance_destroy();
		
		instance_create_depth(0,0,depth,obj_chave_tela);
	}
}