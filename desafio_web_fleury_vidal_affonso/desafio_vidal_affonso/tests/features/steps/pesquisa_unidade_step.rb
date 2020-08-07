
Dado('que esteja logado no site do Fleury') do
  #metodo chamada da classe HomePage para abrir o browser
  home_page.load
end

Dado('que ja esteja logado e clico no link unidades') do
   #metodo chamada da classe HomePage
  home_page.unidades
end

Quando('é aplicado os filtros') do |table|
 #metodo chamada da classe UnidadesPage
unidades_page.selecionar_filtros
end

Quando('clicando no link Ver Detalhes') do
  #metodo chamada da classe UnidadesPage
 unidades_page.ver_detalhes
end

Então('a unidade República do Líbano I é exibida.') do
# foi feita uma validação para o title da página é igual 
#Unidade República do Líbano I › Laboratórios | Fleury Medicina e Saúde 
# foi feita uma concatenação da mesangem  para não deixar chumbado a mensagem no step
#que vem da ValidacaoPage
#utilizando o  if e else se caso der OK ou NOK a mensagem é exibida no prompt!

  if expect(page).to have_title(validacao_page.titulo_pagina)
    puts "o Título da pagina é #{validacao_page.titulo_pagina}"

  else
    puts "o Título da pagina não é #{validacao_page.titulo_pagina}"
  end

  # foi feita uma validação que o seletor da página  que de um tipo H1 
  #contém o nome da unidade "República do Líbano I" mensagem gravada
  #foi feita uma concatenação da mesangem  para não deixar chumbado a mensagem no step
  #que vem da ValidacaoPage
   #utilizando o  if e else se caso der OK ou NOK a mensagem é exibida no prompt!
    if expect(page).to have_selector('h1.typographycomponentstyle__H1-sc-1oox73n-1.lomAMa', text: validacao_page.nome_unidade)
      puts "o Nome da Unidade é #{validacao_page.nome_unidade}"
   else 
    puts "o Nome da Unidade é  #{validacao_page.nome_unidade} não é este" 

   end

end