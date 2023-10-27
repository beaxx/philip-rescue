direita = keyboard_check(ord("D")) || keyboard_check(vk_right);
esquerda = keyboard_check(ord("A")) || keyboard_check(vk_left);
cima = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);

hveloc = (direita - esquerda) * veloc;

if direita{
	direc = 0;
	sprite_index = spr_a_andando_d;
} else if esquerda{
	direc = 1;
	sprite_index = spr_a_andando_e;
}
else{
	if direc == 0{
		sprite_index = spr_a_parada;
	}
	else if direc == 1{
		sprite_index = spr_a_parada_e;
	}
}


// jump e double jump

vveloc += gravidade;

if(cima && jump_current > 0)
{
    vveloc = -2.7;
    jump_current--;
}

if(place_meeting(x, y + vveloc, obj_parede))
{
    while(!place_meeting(x, y + sign(vveloc), obj_parede))
    {
        y += sign(vveloc);
    }
 
    if(vveloc > 0)
    {
        jump_current = jump_number;
    }
 
    vveloc = 0;
}

y += vveloc;

//if !place_meeting(x, y + 1, obj_parede){
	//vveloc += gravidade;
//}
//else{
//	if cima{
//		vveloc = -3.5;
//	}
//}


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

/// Dialógos com npcs
if distance_to_object(obj_par_npcs) <= 10{
	if keyboard_check_pressed(ord("E")){
		var _npc = instance_nearest(x, y, obj_par_npcs);
		var _dialogo = instance_create_layer(x,y, "dialogo", obj_dialog )
		_dialogo.npc_nome =  _npc.nome; 
	}	
}


if(place_meeting( x + hveloc, y, obj_parede)){
	while !place_meeting(x + sign(hveloc), y, obj_parede){
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