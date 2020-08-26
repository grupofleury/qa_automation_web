#Uso essa classe para ações, exemplo: Clicar, Escrever, Scrolldown...

class Core
  include RSpec::Matchers
  include Capybara::DSL

  def initialize
    @logic = Logic.new
  end

  def scroll_down(posicao)
    page.execute_script("window.scrollTo(0,#{posicao});")
  end

  def click_element(elm)
    # espera a página carregar todos os itens, e espera achar o elemento
    @logic.expect_elm(elm)
    assert_selector(elm)
    find(elm).click
  rescue StandardError => e
    if e.to_s.include?('expected to find')
      raise "Nao foi possivel encontrar o elemento #{elm}"
    end
  end
end
