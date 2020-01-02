Dado("que acesso o portal Fleury") do
    @fleury = MainPage.new
    @fleury.load
  end
  
  Quando("realizar a busca pelo {string}") do |estado|    
    @fleury.unidades_link.click
    @fleury.buscarendereco.set estado
    @fleury.buscarendereco.send_keys :enter
    sleep 7
  end
  
  Então("devo acessar a localidade e validar o {string}") do |endereco|
    @fleury.unidade.click
    sleep 5
    page.execute_script "window.scrollBy(0,200)"
    expect(page).to have_content("#{endereco}")
  end