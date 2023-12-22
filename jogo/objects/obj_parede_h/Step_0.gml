/*
hveloc = dir * veloc;

if (instance_place(x + hveloc, y, obj_parede_inimigo)) {
    dir *= -1;
}

var _colisao = place_meeting(x + hveloc, y, obj_personagem) or place_meeting(x, y - 1, obj_personagem);

if (_colisao) {
    var _other_hveloc = obj_personagem.hveloc; // Armazena a velocidade horizontal do personagem

    if (!place_meeting(x + _other_hveloc, y, obj_parede_inimigo)) {
        x += _other_hveloc;
    }
}
*/

	

hveloc = dir * veloc;

// Verifica colisão com obj_parede_inimigo e inverte a direção
if (instance_place(x + hveloc, y, obj_parede_inimigo)) {
    dir *= -1;
}

// Verifica colisão com o personagem
var _colisao = place_meeting(x + hveloc, y, obj_personagem) or place_meeting(x, y - 1, obj_personagem);

if (_colisao) {
    // Se houver colisão com o personagem, ajusta a posição do personagem
    with (obj_personagem) {
        if (!place_meeting(x + other.hveloc, y, obj_parede_inimigo)) {
            x += other.hveloc;
        }
    }
}

x += hveloc;