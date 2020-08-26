require 'rspec'
require 'yaml'
require 'pry'
require 'cucumber'
require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'ffaker'
require 'report_builder'
require 'httparty'
require 'json'


Capybara.configure do |config|
 
    config.default_driver = :selenium_chrome 
    config.app_host = "https://www.fleury.com.br/"
    config.default_max_wait_time = 20
    config.default_selector = :xpath
    config.run_server = false

end

EL     = YAML.load_file('./data/environments/elm.yml')
GLOBAL = YAML.load_file('./data/environments/global.yml')