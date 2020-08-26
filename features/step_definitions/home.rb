Dado("que acesso o site Fleury") do
  @homePage = HomePage.new
  @homePage.load
end

Quando("clico em Unidades") do
  @homePage.unidades.click
  @unidadesPage = UnidadesPage.new
end

E("seleciono os seguintes filtros por facilidade {string}") do |filtros|
  sleep(5)
  @unidadesPage.filtro_facilidade.click
  filtros.split('|').each do |filtro|
    @unidadesPage.select_filtro_facilidade_by_text filtro
  end
  screenshot = "log/screenshots/filtrado.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Filtrado')
end

E("clico em ver detalhes da primeira unidade") do
  @unidadesPage.ver_detalhes_do_primeiro
end

Então("o nome da unidade deve ser {string}") do |titulo|
  sleep(2)
  fail if titulo != @unidadesPage.pegar_titulo.text
end