if (keyboard_check_pressed(vk_escape)) {
	if (room != rm_pausa){
		if instance_exists(obj_personagem){
			obj_personagem.persistent = false;
			}   
			room_goto(rm_pausa);
	}
}