Before do
  Capybara.page.driver.browser.manage.window.maximize
  #$take_screenshot = Proc.new { embed $browser.screenshot.base64, 'image/png' }
end

# prints dos testes
After do |scenario|
  add_screenshot(scenario)
end

def add_screenshot(scenario)
  scenario_name = scenario.name.gsub(/[^A-Za-z0-9]/, '')
  scenario_name = scenario_name.gsub(' ', '_').downcase!
  screenshot = "log/screenshots/#{scenario_name}.png"
  page.save_screenshot(screenshot)
  embed(screenshot, 'image/png', 'Resultado')
end