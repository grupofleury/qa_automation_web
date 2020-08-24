require 'capybara'
require 'capybara/cucumber'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'webdrivers'
require 'httparty'
require 'pp'
require 'yaml'
require 'time'

BROWSER = ENV['BROWSER']
env = ENV['ENV']
env ||= 'environment'

$config = YAML.load_file("config/#{env}.yml")
url = $config['APP']['URL']

HTTParty::Basement.default_options.update(verify: false)

# Webdrivers::Chromedriver.required_version = '83.0.4103.39'

$debug = false
debug_webdriver = false
if debug_webdriver
  Webdrivers.logger.level = :DEBUG
end

Capybara.configure do |app|
  app.default_driver = :selenium
  app.app_host = url
  app.default_max_wait_time = 5
end

Capybara.register_driver :selenium do |app|
  download_directory = Dir.pwd + '/tmp/downloads'
  options = Selenium::WebDriver::Chrome::Options.new(options: {:excludeSwitches => ["enable-automation"]})

  if BROWSER.eql?('chrome_headless')
    options.add_argument('--headless')
    options.add_argument('--window-size=1366,768')
  end
  options.add_argument('--no-sandbox')
  options.add_argument('--disable-gpu')
  options.add_argument('--disable-popup--blocking')
  # options.add_argument('--window-size=1366,768')
  options.add_argument('--start-maximized')
  # options.add_argument('--ignore-certificate-errors')

  # Redux chrome extension for debugging purpose
  # options.add_extension('extension_2_17_0_0.crx')

  options.add_preference(:download, directory_upgrade: true,
                         prompt_for_download: false,
                         default_directory: download_directory)
  options.add_preference(:browser, set_download_behavior: { behavior: 'allow' })


  driver = Capybara::Selenium::Driver.new(app, browser: :chrome,
                                          options: options)
  bridge = driver.browser.send(:bridge)

  path = '/session/:session_id/chromium/send_command'
  path[':session_id'] = bridge.session_id

  bridge.http.call(:post, path, cmd: 'Page.setDownloadBehavior',
                   params: {
                       behavior: 'allow',
                       downloadPath: download_directory
                   })
  driver
end
