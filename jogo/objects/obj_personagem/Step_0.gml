


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

// morte com espinho

if(ja_apareceu == false){
if(room == rm_quarto_a){
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
}


if(global.tem_chave){
	  instance_create_depth(0, 0, depth, obj_chave_tela);
}

// dialogo npc
if distance_to_object(obj_par_npc) <= 20{
	if keyboard_check_pressed(vk_enter) && !dialogo_ativo{
		dialogo_ativo = true;
		dialogo_andamento = true;
		var _npc = instance_nearest(x, y, obj_par_npc);
		var _dialogo = instance_create_layer(x, y, "Dialogo", obj_dialogo)
		_dialogo.npc_nome = _npc.nome;
	}}

if (place_meeting(x, y, obj_save)) {
	salvo = true;
    audio_play_sound(snd_toque,1, 0);
    game_save("save"); 
}

if(y<35){
	x+=0.5;
	y-=0;
}

if (place_meeting(x, y, obj_espinho)) {
    if (vida > 0) { 
        vida = 0;
        if (!morte_som_tocando) {
            audio_play_sound(snd_morte, 1, 0);
            morte_som_tocando = true;
        }

    }
	
} else {
    morte_som_tocando = false;
}

if(y>480){ 
	if (vida > 0) { 
        vida = 0;
        if (!morte_som_tocando) {
            audio_play_sound(snd_morte, 1, 0);
            morte_som_tocando = true;
        }

    }
	
} else {
    morte_som_tocando = false;
}

if(vida <= 0){
		visible = false;
		morte = true;
}


