Dado("que o usuário acessa a home page") do
  visit("/")
end

Dado("que o usuário acesse o menu Unidades") do
  @page.call(HomePage).access_units_menu
end

Quando("selecionar a unidade de Brasília") do
  @page.call(UnitsPage).units_brasilia
end

Então("o sistema deverá apresentar o endereço") do |address|
  expect(page).to have_content address
end
