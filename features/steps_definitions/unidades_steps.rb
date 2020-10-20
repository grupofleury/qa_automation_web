######### GIVEN #########
Dado('que quero marcar uma consulta') do
  home_page.load
  
end

######### WHEN #########

Quando('procuro a {string}') do |escolha|
  home_page.escolher_link(escolha)
  
end

Quando('pego os {int} primeiros requistos') do |primeiros|
 unidades.escolher_por_ordem(primeiros)
 unidades.clicar_primeira_unidade_disponivel
end

######### THEN #########
#Neste caso o find elemento está no step pois não é uma boa pratica ocultar assert
Entao('posso ver uma unidade disponivel') do
  expect(page).to have_css('h2', :text => 'HORÁRIO DA UNIDADE')
end