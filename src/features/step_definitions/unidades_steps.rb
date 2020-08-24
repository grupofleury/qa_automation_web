Quando("acesso a página de {string}") do |pagina|
  @base_page.ir_para_pagina(pagina)
end

E("filtro as unidades pelas facilidades") do |table|
  data = table.rows_hash
  @unidades_page.menu_facilidades
  data.each do |facilidade, value|
    to_be_select = value.to_s.downcase == 'true'
    @unidades_page.set_facilidades(facilidade, to_be_select)
  end
end

When("clico para ver os detalhes da unidade do {int}º resultado") do |num_resultado|
  found = @unidades_page.exibiu_resultados
  expect(found).to be true

  @nome_unidade = @unidades_page.nome_unidade(num_resultado)
  @unidades_page.click_detalhes_unidade(@nome_unidade)
end

When(/^a página de detalhe correspondente a unidade será exibida com sucesso$/) do
  titulo_nome_unidade = @unidades_page.titulo_nome_unidade
  expect(titulo_nome_unidade).to eql(@nome_unidade)
end