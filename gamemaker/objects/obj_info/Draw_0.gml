var _texto = "[Pressione 'E' para conversar]";

draw_set_color(c_black); // Define a cor da sombra (preto no exemplo)
draw_text(212, 422, _texto); // Desenha a sombra com um deslocamento de 2 pixels
draw_set_font(detalhes);

draw_set_color(c_white); // Define a cor do texto principal (branco no exemplo)
draw_text(210,420, _texto); // Desenha o texto principal
draw_set_font(detalhes);


