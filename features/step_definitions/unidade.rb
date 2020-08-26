Dado('que eu acesso o site da Fleury') do
    # Acessa a página inicial da Fleury
    @home_page.go
end

Quando('realizo uma pesquisa por unidade filtrando por falicidade:') do |table|
    # Transforma a Data Table em um array de hashes
    facilities_table = table.hashes
    
    # Acessa a página de Unidades através do menu Unidades da home
    @home_page.unity_access
    
    # Acessa o dropdown do filtro Facilidades e seleciona as facilidades
    @unity_page.select_facilities(f: facilities_table)    
end
  
Quando('acesso a página de detalhes') do
    # Clico em Ver Detalhes do primeiro card de unidade que for exibido
    @unity_page.details
end
  
Então('devo visualizar a página da unidade {string}') do |unity|
    # Valida o nome da unidade na página Unidade
    expect(get_unity_name).to eql unity
end