vveloc = dir * veloc;

if instance_place(x, y+vveloc,obj_parede_inimigo){
	dir*=-1;
}
y+=vveloc;
