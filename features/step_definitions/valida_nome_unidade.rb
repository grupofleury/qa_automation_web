# frozen_string_literal: true

Dado('que acesse o site Fleury') do
  valida_nome.acessar_pagina_inicial
end

Quando('clico no link Unidades') do
  valida_nome.click_link_unidades
end

Quando('escolho as opções de Facilidade') do
  valida_nome.escolher_facilidade
end

Quando('clico em Ver Detalhes') do
  valida_nome.ver_unidades
end

Então('valido o {string}') do |nome_da_unidade|
  expect(page).to have_content(nome_da_unidade)
end

# acho interessante dividir os steps em partes simples para poder realizar uma
# manutencao mais facilmente.
