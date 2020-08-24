class UnidadesPage < BasePage
  include Capybara::DSL

  def initialize(helpers)
    @helpers = helpers
  end

  def menu_facilidades
    menu_dropdown_css = '#checkoox-select-facilities'
    find(menu_dropdown_css).click

    menu_css = "div[class^='checkbox-selectcomponentstyle__CheckboxSelectScrollStyled']"
    page.has_css?(menu_css, wait: 05)

    limpar_facilidades_css = '#button-checkbox-select'
    find(limpar_facilidades_css).click
  end

  def set_facilidades(facilidade, to_be_selected)
    if to_be_selected
      click_facilidade(facilidade)
    end
  end

  def click_facilidade(facilidade)
    find("label[for='_#{facilidade}']").click
  end

  def exibiu_resultados
    componente_card_unidades_css = "div[class^='unit-cellcomponentstyle__UnitCellStyled']"
    page.has_css?(componente_card_unidades_css, wait: 0.5)
  end

  def nome_unidade(num_resultado)
    unidades = []
    nome_unidade_css = "div[id^='unit-cell'] h3"
    all(:css, nome_unidade_css).each do |unidade|
      unidades << unidade.text
    end
    unidades[num_resultado - 1]
  end

  def click_detalhes_unidade(nome_unidade)
    card_unidade_xpath = "//h3[text()='#{nome_unidade}']/../../../../../.."
    within(:xpath, card_unidade_xpath) do
      find('.ver-detalhes').click
    end

    wait_load_pag_detalhes_unidade
  end

  def wait_load_pag_detalhes_unidade
    pagina_detalhes_unidade_css = '#button-dictionary-breaccrumb-0'
    page.has_css?(pagina_detalhes_unidade_css, wait: 1)
  end

  def titulo_nome_unidade
    find('h1').text
  end
end