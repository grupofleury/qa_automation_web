require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

#Variável Global do arquivo producao.yml.
AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

#Define o módulo criado no page_helper.rb, como Global.
World (PageObjects)
World (Helper)

#Configurações de driver, navegar e timeout.
Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 5
    Capybara.page.driver.browser.manage.window.maximize
end
