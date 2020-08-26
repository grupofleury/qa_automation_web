class UnidadesPage < SitePrism::Page
  set_url '/unidades'
  
  element :filtro_facilidade, '#checkoox-select-facilities > div'
  element :bicicletario_e_vaga_verde, "label[for='_Bicicletário e vaga verde']"
  element :vacinacao, "label[for='_Vacinação']"
  element :atendimento_aos_domingos, "label[for='_Atendimento aos domingos']"
  element :unidades_em_shoppings, "label[for='_Unidades em shoppings']"
  element :proximo_ao_metro, "label[for='_Próximo ao metrô']"
  element :atendimento_noturno, "label[for='_Atendimento noturno']"
  elements :found, ".ver-detalhes"
  element :titulo, "div > div > h1"

  def select_filtro_facilidade_by_text(text)
    options = {
      'Bicicletário e vaga verde' => bicicletario_e_vaga_verde,
      'Vacinação' => vacinacao,
      'Atendimento aos domingos' => atendimento_aos_domingos,
      'Unidades em shoppings' => unidades_em_shoppings,
      'Próximo ao metrô' => proximo_ao_metro,
      'Atendimento noturno' => atendimento_noturno
    }
    raise text + " not found" unless options.has_key?(text)

    options[text].click
  end

  def ver_detalhes_do_primeiro
    found[0].click
  end

  def pegar_titulo
    titulo
  end

end

