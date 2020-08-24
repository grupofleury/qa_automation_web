class ValidandoPage
  include Capybara::DSL

   # Utilizei o metodo para fazer um hooks para visitar a página, caso necessitasse escrever novas features, somente instaciaria a tag.   
   def go
    visit "/"
   end

   # Utilizei o função do Capybara "click_link_or_buttons", mesmo sendo um tipo "a", para que evitar algum tipo de erro.
   def unid
    click_link_or_button "Unidades" 
   end

   # Encontrei a classe referente aos filtros, precisei somente pedir para encotrar os nomes.
   def selects
    find("#checkoox-select-facilities").click
    find(".typographycomponentstyle__InputValue-sc-1oox73n-12", text: "Bicicletário e vaga verde").click
    find(".typographycomponentstyle__InputValue-sc-1oox73n-12", text: "Vacinação").click
    find(".typographycomponentstyle__InputValue-sc-1oox73n-12", text: "Atendimento aos domingos").click
   end

   def  details
        click_link_or_button "Ver detalhes"
   end

   # Econtrei a classe referente ao cabeçalho com o nome da unidade, pedi para encotrar o texto e usei o expect para compara-lo e fazer a validação.
   def name_clinic
    find(".typographycomponentstyle__H1-sc-1oox73n-1.lomAMa").text 
   end

end
