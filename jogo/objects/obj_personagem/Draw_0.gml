draw_self();

if(instance_exists(obj_par_npc)){
if(distance_to_object(obj_par_npc) <= 15){
draw_sprite(spr_indicador,0, x - 10 , y - 70);
}
}

if(instance_exists(obj_porta)){
if(distance_to_object(obj_porta) <= 15){
draw_sprite(spr_indicador,0, x - 10 , y - 70);
}
}

if(instance_exists(obj_papel)){
if(obj_papel.fez == false){
	if(distance_to_object(obj_papel) <= 15 ){
		draw_sprite(spr_indicador,0, x - 10 , y - 70);
	}
}
}

if(instance_exists(obj_chave)){
if(distance_to_object(obj_chave) <= 15){
draw_sprite(spr_indicador,0, x - 10 , y - 70);
}
}