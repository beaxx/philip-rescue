// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function scr_textos(){
	switch npc_nome{
		case "luna":
			ds_grid_add_text("Boa tarde senhora!", spr_retrato_a, 0, "Amanda");
			ds_grid_add_text("Ola mocinha, o que você esta fazendo aqui?", spr_retrato_l, 1, "Luna");
			ds_grid_add_text("Vou procurar meu porquinho que sumiu, você o viu?", spr_retrato_a, 0, "Amanda");
		    ds_grid_add_text("Não é uma boa ideia entrar nessa floresta.", spr_retrato_l, 1, "Luna");
			ds_grid_add_text("Por que?", spr_retrato_a, 0, "Amanda");
			ds_grid_add_text("Apenas não entre.", spr_retrato_l, 1, "Luna");
			ds_grid_add_text("Eu preciso! É a vida do meu porquinho", spr_retrato_a, 0, "Amanda");
			ds_grid_add_text("...", spr_retrato_l, 1, "Luna");
		break;
	}
}
function ds_grid_add_row(){
	var _grid = argument[0];
	ds_grid_resize(_grid, ds_grid_width(_grid), ds_grid_height(_grid) + 1);
	return(ds_grid_height(_grid)-1);
}
function ds_grid_add_text(){
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
	
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}