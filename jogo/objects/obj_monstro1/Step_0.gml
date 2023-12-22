if place_meeting(x, y, obj_parede_inimigo){
	if direc == 0{
		direc = 1;
	}
	else if direc ==1{
	direc = 0;
	}
}

if direc == 0{
x += veloc;
sprite_index = spr_monstro1_d;
}else if direc == 1{
	x -= veloc;
	sprite_index = spr_monstro1_e;
}

