if keyboard_check(vk_f4){
	window_set_fullscreen(true);
}
if(obj_personagem.morte = true){
	contador++;
	if(contador >= tempo){
		room_goto(rm_gameover);
	}
}