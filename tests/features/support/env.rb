require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'report_builder'
require_relative 'page_helper.rb'

World(PageObjects) #deixei esse modulo global

Capybara.configure do |config|

    config.default_driver = :selenium_chrome
    #config.app_host = 'https://www.fleury.com.br/'
    config.default_max_wait_time = 5

end