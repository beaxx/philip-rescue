// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_personagem_movendo(){
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
    vveloc = -2.0;
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
}