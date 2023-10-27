var _sprl = sprite_get_width(spr_vida) * 2;
var _buffer = 10;
var _vidas = obj_personagem.vida;

for (var _i = 0; _i < _vidas; _i++ ){
		draw_sprite_ext(spr_vida, 0, 10 + (_sprl * _i) + (_buffer * _i),10, 2,2, 0, c_white, 1)
}


