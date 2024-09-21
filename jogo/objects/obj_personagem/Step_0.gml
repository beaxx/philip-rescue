


if(place_meeting( x + hveloc, y, obj_parede)){
	while(!place_meeting(x + sign(hveloc), y, obj_parede)){
		x += sign(hveloc);
	}
	hveloc = 0;	
}
x += hveloc;

if(place_meeting(x, y + vveloc, obj_parede)){
	while !place_meeting(x, y + sign(vveloc), obj_parede){
	y += sign(vveloc);
	}
	vveloc = 0;
}
y += vveloc;

script_execute(estado);

 
 
if alarm[0] > 0{
	if image_alpha >=1{
		alfa_hit = -0.1;
	}else if image_alpha <= 0{
		alfa_hit = 0.1; 
		}
	image_alpha += alfa_hit;
}else{
	image_alpha = 1;	
}

if(room = rm_quarto_a){
	// instance_create_layer(400,300,"tut",obj_tut);
	if(contador < 50){
		contador++;
		if(contador >= 50){
			if (room != rm_tut){
				if instance_exists(obj_personagem){
					obj_personagem.persistent = false;
					}   
					room_goto(rm_tut);
			}
		}
	}
}

// dialogo npc
if distance_to_object(obj_par_npc) <= 20{
	instance_create_layer(x,y,"Indicador",obj_indicador);
	if keyboard_check_pressed(vk_enter) && !dialogo_ativo{
		var _npc = instance_nearest(x, y, obj_par_npc);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo)
		_dialogo.npc_nome = _npc.nome;
		dialogo_ativo = true;
		dialogo_andamento = true;
	}

}

if (place_meeting(x, y, obj_save)) {
	salvo = true;
    audio_play_sound(snd_toque,1, 0);
    game_save("save"); 
}

if(y<35){
	x+=0.5;
	y-=0;
}

if(y>480 || vida <= 0){
	sprite_index = spr_a_morrendo;	
	if (image_index >= 5) { 
        image_speed = 0;
		morte = true;
    }	
}


