if (keyboard_check(vk_f4)){
	window_set_fullscreen(true);
}
if(keyboard_check(ord("T"))){
	if (room != rm_tut){
		if instance_exists(obj_personagem){
			obj_personagem.persistent = false;
		}   
		room_goto(rm_tut);
}
}