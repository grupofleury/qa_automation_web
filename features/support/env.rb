require 'capybara'
require 'capybara/cucumber'
require 'cpf_faker'
require 'httparty'
require "rspec"
require "json"
require "faker"
require 'site_prism'
require 'selenium-webdriver'

#configurando driver do capybara
Capybara.configure do |config|
    config.default_driver = :selenium_chrome # roda teste no chrome
    config.default_max_wait_time = 30
end

Capybara.page.driver.browser.manage.window.maximize
# maximizando a janela do browser ao iniciar