Dado('que estou na página Unidades') do
  @unidades.acessa_menu_unidades
end

Quando('seleciono as Facilidades') do
  @unidades.selecionar_facilidades
end

Quando('seleciono a unidade') do
  expect(page).to have_content('Avenida Regente Feijó, 1739, Piso Acácia, Loja 37 E')
  @unidades.selecionar_unidade
end
 
Então('devo ver a mensagem de Unidades') do
  expect(page).to have_content('Unidades')
end

