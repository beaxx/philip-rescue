if(file_exists("save")){
	if(obj_personagem.salvo = true){
		game_load("save");
	}else{
		room_goto(rm_quarto_a);
	}
}
