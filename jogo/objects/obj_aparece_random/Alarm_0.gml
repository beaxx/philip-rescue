if(identifica == 1){
	instance_create_layer(x, 450,"instances", obj);
	alarm[0] = 120;
}else if(identifica == 2){
	instance_create_layer(x, 450,"instances", obj);
	alarm[0] = 240;
}else if(identifica == 3){
	instance_create_layer(x, 450,"instances", obj);
	alarm[0] = 180;
}else if(identifica == 4){
	instance_create_layer(x, 460,"instances", obj);
	alarm[0] = 240;
}
if (room == rm_nivel5){
	obj_parede_v.veloc = 2;
}