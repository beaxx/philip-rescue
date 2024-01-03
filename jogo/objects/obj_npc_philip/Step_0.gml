if(distance_to_object(obj_personagem)< 20){
	x = lerp(x, obj_personagem.x, 0.5);
	
	if (obj_personagem.direita){
		obj_personagem.direc = 0;
		sprite_index = spr_philip_andando_d;
	} else if (obj_personagem.esquerda){
		obj_personagem.direc = 1;
		sprite_index = spr_philip_andando_e;
	}
	else{
		if (obj_personagem.direc = 0){
			sprite_index = spr_philip_d;
	} else if (obj_personagem.direc = 1){
			sprite_index = spr_philip;
	}
}
	/*if (obj_personagem.direc == 0){
		sprite_index = spr_philip_d;
	}else{
		sprite_index = spr_philip;
	}*/
}