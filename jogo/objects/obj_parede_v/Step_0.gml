vveloc = dir * veloc;

// Verifica colisão com obj_parede_inimigo e inverte a direção
if (instance_place(x,y +  vveloc , obj_parede_inimigo)) {
    dir *= -1;
}

// Verifica colisão com o personagem
var _colisao = place_meeting(x, y + vveloc , obj_personagem) or place_meeting(x - 1, y, obj_personagem);

if (_colisao) {
    // Se houver colisão com o personagem, ajusta a posição do personagem
    with (obj_personagem) {
        if (!place_meeting(x, y  + other.vveloc, obj_parede_inimigo)) {
            y += other.vveloc;
        }
    }
}

y += vveloc;