require 'capybara/cucumber'
require "selenium-webdriver"
require 'site_prism'
# require "builder" 
require 'report_builder'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #roda no navegador
    config.default_max_wait_time = 20
    config.javascript_driver = :webkit
end
 