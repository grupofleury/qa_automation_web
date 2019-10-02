require 'pry'
require 'capybara'
require 'capybara/cucumber'
require_relative File.expand_path('../common/base_screen.rb', __dir__)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  include Capybara::DSL
end