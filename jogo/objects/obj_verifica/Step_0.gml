if (instance_exists(obj_quadrado1)){
if(obj_quadrado1.image_angle == -360 &&
obj_quadrado2.image_angle == -360 &&
obj_quadrado3.image_angle == 0 &&
obj_quadrado4.image_angle == 0 &&
obj_quadrado5.image_angle == 0 &&
obj_quadrado6.image_angle == 0 &&
obj_quadrado7.image_angle == 0 &&
obj_quadrado8.image_angle == 0 &&
obj_quadrado9.image_angle == -360 &&
obj_quadrado10.image_angle == 0 &&
obj_quadrado11.image_angle == 0 &&
obj_quadrado12.image_angle == -360 &&
obj_quadrado13.image_angle == -360 &&
obj_quadrado14.image_angle == 0 &&
obj_quadrado15.image_angle == 0 &&
obj_quadrado16.image_angle == -360 &&
obj_quadrado17.image_angle == 0 &&
obj_quadrado18.image_angle == -360 &&
obj_quadrado19.image_angle == 0 &&
obj_quadrado20.image_angle == -360) {
terminou = true;
}
if terminou == true {
    // Faz a contagem para voltar à room quarto
    if (contador <= 100) {
        contador++;
        if (contador >= 100) {
            room_goto(rm_quarto_a);
        }
    }
}

if(instance_exists(obj_senha1)){
	if( obj_senha1.image_index == 2 &&
	obj_senha2.image_index == 7&&
	obj_senha3.image_index == 9&&
	obj_senha4.image_index == 9
	)abriu = true;
}
if abriu == true{
	if(contador <= 60){
	contador++
	if(contador >=60){
		room_goto(rm_casa1);
			audio_play_sound(snd_destrancando,1, 0);

	}
}

}}
