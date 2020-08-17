#Camada responsável por orquestar a chamadas de métodos e fazer as comparações a fim de validar o teste proposto.

Dado('que a cliente esteja no site da fleury') do
  #metodo para instanciar o browser e acessar a pagina
  visit "https://www.fleury.com.br"
end

Dado('clica em unidades') do
   #método para clicar em unidades
  @HomeFleury_page.checarUnidade
end

Dado('clica em filtrar por facilidade') do
  #método para clicar em facilidades
  @Unidades_page.facilidadesClick
end

Dado('seleciona três facilidades') do
  #método para selecionar as opções de facilidades
  @Unidades_page.facilidadesCheck
end


Dado('clica em ver detalhes') do
  #Método para exibir detalhes da unidade selecionada
  @Unidades_page.verDetalhesUnidadeLibano
end

Entao('é exibido a unidade  {string}') do |unidade|
  
  #Realizando comparação com a unidade selecionada x unidade esperada. 
  if expect(page).to have_current_path("/unidades/#{unidade}")
    log "Unidade encontrada:  #{unidade}"

  else
    log "Unidade não encontrada"
  end

end
