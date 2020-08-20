require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'instance.rb'
require_relative 'helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

HEADLESS = ENV['HEADLESS']

ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/data/#{ENVIRONMENT_TYPE}.yml")

# Configurações do driver e browser
Capybara.register_driver :selenium do |app|
    argshoff = %w[--disable-infobars window-size=1600,1024]
    argshon = %w[headless disable-gpu --disable-infobars window-size=1600,1024]

    if HEADLESS.eql?('headless_off')
        Capybara::Selenium::Driver.new(
            app,
            browser: :chrome,
            desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
                'chromeOptions' => { 
                    'args' => argshoff }
            )
        )
    elsif HEADLESS.eql?('headless_on')
        Capybara::Selenium::Driver.new(
            app,
            browser: :chrome,
            desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
                'chromeOptions' => { 
                    'args' => argshon
                }
            )
        )
    end

end

# Configuração do Framework
Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.app_host = CONFIG['url_fleury']
end