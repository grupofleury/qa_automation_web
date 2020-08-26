require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'

require_relative 'helpers'

World(Helpers) # todos os recursos do modulo Helpers são nativos dentro da execução do 
               # cucumber e pode ser evocado a qualquer momento e qualquer lugar

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV['ENV_TYPE']}.yaml")) # carrega o arquivo yaml com a configuração do ambiente desejado

# Possibilita a execução dos testes em multiplas plataformas
case ENV['BROWSER']
when 'firefox'
    @driver = :selenium
when 'chrome'
    @driver = :selenium_chrome
when 'headless'
    @driver = :selenium_chrome_headless
else
    puts 'Invalid Browser'
end

# Configuração do cappybara
Capybara.configure do |config|
    # Determina o navegador padrão, neste caso está vindo de cucumber.yaml
    config.default_driver = @driver

    # Determina o host, neste caso está vindo das configs de ambiente setadas na pasta Config
    config.app_host = CONFIG['url']

    # Tempo máximo de timeout que o capybara irá esperar pra achar os elementos na página
    config.default_max_wait_time = 10
end