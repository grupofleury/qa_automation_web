class BasePage
  include Capybara::DSL

  def initialize(helpers)
    @helpers = helpers
    @env = ENV['ENV']
  end

  def to_pascal_case(string)
    string.split(' ').collect(&:capitalize).join.delete('#,')
  end

  def pagina_inicial
    url = $config['APP']['URL']
    visit url
  end

  def ir_para_pagina(pagina)
    menu_header_xpath = "//*[@id='button-title-desktop-header']/../.."
    within(first(:xpath, menu_header_xpath)) do
      click_on pagina
    end
  end
end
