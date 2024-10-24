/*if(room == rm_puzzle2){
	 if (!instance_exists(obj_personagem)) {
		instance_create_depth(x, y, depth, obj_personagem);}
		if(obj_personagem.tem_senha == true){
			draw_sprite(spr_senha,0,200,100);
			obj_personagem.ja_apareceu = true;
		 }
		 instance_destroy(obj_personagem);
	 } */

if(room == rm_puzzle2){
		if(global.fez == true){
			draw_sprite(spr_senha,0,310,370);
		}
	 }