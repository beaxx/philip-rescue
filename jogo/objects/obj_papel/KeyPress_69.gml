if(visible){
if (place_meeting(x, y, obj_personagem)) {
    if (room == rm_quarto_a) {
        if (global.fez == false) {
            room_goto(rm_puzzle1);
            obj_personagem.persistent = false;
            global.fez = true;
			visible = false;
        } else {
            room_goto(rm_puzzle1);
        }
    }
	else if (room = rm_casa1){
			room_goto(rm_puzzle3);
			obj_personagem.persistent = false;
			instance_destroy();
}
}
}



