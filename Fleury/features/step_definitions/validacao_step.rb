Dado("que clico em unidade") do
  @validar.unid
end
  
Dado("vou escolho minhas opções em Filtro por Facilidade") do
   @validar.selects
end
  
Quando("o filtro trazer uma opção devo ir em Ver detalhes") do
    @validar.details
end
  
Então("verifico se a clinica é a {string}") do |clinic|
    @validar.name_clinic
    expect(@validar.name_clinic).to eql clinic
    sleep 3
end