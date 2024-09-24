draw_self();

if(distance_to_object(obj_par_npc) <= 15){
draw_sprite(spr_indicador,0, x - 10 , y - 70);
}

if(obj_papel.fez == false){
	if(distance_to_object(obj_papel) <= 15 ){
		draw_sprite(spr_indicador,0, x - 10 , y - 70);
	}
}