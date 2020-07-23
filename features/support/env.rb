# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'
require 'cucumber'
require 'pry'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'page_helper.rb'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://www.fleury.com.br/'
  config.default_max_wait_time = 5
  Capybara.page.driver.browser.manage.window.maximize
end

World(Capybara::DSL)
World(Pages)
