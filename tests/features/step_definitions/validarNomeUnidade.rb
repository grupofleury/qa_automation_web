Dado('que o usuário possa acessar o site') do
    
    home.load
    
    expect(home).to have_current_path('https://www.fleury.com.br/', url:true)
end


Quando('eu clicar na aba unidades') do
   
   unidades.wait_until_units_visible
   unidades.units.click
   unidades.wait_until_facilidades_visible
   
end
  
Quando('selecionar uma ou três opções de facilidade') do
    
    opcoes.facilidade.click
    opcoes.wait_until_bike_visible
    opcoes.bike.click
    
end
  
Quando('clicar nos detalhes da primeira unidade exibida') do
    
    detalhes.wait_until_verDetalhes_visible
    detalhes.verDetalhes.click
    
end
  
Então('o sistema deverá exibir o nome completo da unidade') do
    
    nomeUnidade.wait_until_unidade_visible
    
end