draw_set_font(font_menu);
draw_set_color(c_white);

var dist = 40;
for(var i = 0; i < op_max; i++){
	if(index == i){
		draw_set_color(c_yellow);
	}else{
		draw_set_color(c_white);
	}
	draw_text(600,350 + (dist * i), opcoes[i]);
}
draw_set_font(-1);


