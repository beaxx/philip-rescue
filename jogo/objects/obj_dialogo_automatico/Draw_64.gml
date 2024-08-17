if (instance_exists(obj_papel) == false && room == rm_quarto_a && dialogo_ativo) {
draw_sprite(spr_caixa_texto, image_index, 100, 10);
draw_set_font(fnt_font_dialog);
draw_set_color(c_dkgrey);
draw_text(142, 50, dialogo[index]);
draw_sprite(spr_retrato_a, image_index, 0, 10);
}









