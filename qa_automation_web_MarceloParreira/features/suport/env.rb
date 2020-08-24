#Libs utilizadas 
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "cucumber"
require "site_prism"


#Verificando qual o browser deverá ser carregado para a execução dos testes
Capybara.configure do |config|
  puts $browser
  if $browser.eql?("firefox")
    config.default_driver = :selenium
  
  else
    config.default_driver = :selenium_chrome
   
  end
end

#Recebe como parâmetro o browser a ser emulado
$browser = ENV['BROWSER']


#configuração utilizada tempo de espera e maximização do browser
Capybara.default_max_wait_time = 20
Capybara.page.driver.browser.manage.window.maximize
