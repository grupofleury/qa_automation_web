# frozen_string_literal: true
class ValidaNome < SitePrism::Page
  element :selecione, '#checkoox-select-facilities'

  def acessar_pagina_inicial
    visit('/')
  end
  # metodo feito para acessar alguma sub-url com mais facilidade 
  # a url principal fica no env.rb.

  def click_link_unidades
    click_link 'Unidades'
  end

  def escolher_facilidade
    selecione.click
    sleep 1
    find('label', :text => 'Vacinação', match: :first).click
    find('label', :text => 'Bicicletário e vaga verde', match: :first).click
    find('label', :text => 'Atendimento aos domingos', match: :first).click
    sleep 1
  end

  def ver_unidades
    click_link 'Ver detalhes'
  end
end
# no def escolher_facilidade foi utilizado o find pois os checkbox nao tem ids
# utilizo click_link e o nome do link para 
# faciliar a escrita do codigo de automação
