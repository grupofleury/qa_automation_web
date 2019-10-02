
# foram criados esses tipode de specs para que sejam reutilizaveis, de formar compacta e objetiva

  Dado("que acesso o menu {string} na pagina inicial") do |string|
    home = HomeScreen.new
    home.select_menu home.menu_list, string
  end

  Quando("eu pesquiso pela sede de {string}") do |string|
    unity = UnityScreen.new
    unity.scroll_element unity.cb_states
    unity.select_combobox unity.cb_states, unity.list_cb_states, string
  end

  Quando('seleciono a cidade de {string}') do |string|
    unity = UnityScreen.new
    unity.click unity.select_city, string
  end
  
  Então('confirmo o endereço {string}') do |string|
    unity = UnityScreen.new
    unity.scroll_element unity.txt_adress
    unity.validate_text unity.txt_adress
    
  end
  
  

