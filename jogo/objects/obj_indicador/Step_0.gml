var _obj1 = instance_nearest(x, y, obj_personagem); 
var _obj2 = instance_nearest(x, y, obj_par_npc); 

if (_obj1 != noone && _obj2 != noone) {

    var _distancia = point_distance(_obj1.x, _obj1.y, _obj2.x, _obj2.y);
	if _distancia > 40{
		instance_destroy();
	}

}




