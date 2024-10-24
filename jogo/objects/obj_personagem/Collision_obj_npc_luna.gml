if distance_to_object(obj_par_npc) <= 30{
	if (keyboard_check_pressed(vk_enter)&& dialogo_andamento == false){
		if (!instance_exists(obj_avisos)) {
			instance_create_depth(x, y, depth, obj_avisos);
		}obj_avisos.mensagem = "Ela não quer mais conversar.";}
}
