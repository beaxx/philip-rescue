var _obj1 = distance_to_object(obj_personagem);
var _obj2 = distance_to_object(obj_par_npc);

var _distancia = _obj1 - _obj2;
if (_distancia > 20){
	instance_destroy();
}

