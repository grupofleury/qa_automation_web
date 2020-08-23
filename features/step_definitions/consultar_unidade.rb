Dado('que eu esteja no site da Fleury') do
    home.load
    home.buscar
end
 
Dado('realizo um filtro por facilidades') do
    home.selecionar
end
 
Quando('finalizo a pesquisa') do
      home.retornar
end
 
Então('o site irá retornar a unidade {string} para mim.') do |unidade|
     expect(home.mostrar).to eql unidade 
     expect(page).to have_current_path("https://www.fleury.com.br/unidades/paraiso")
end