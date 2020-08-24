Before do
  @helpers = Helpers.new
  @base_page = BasePage.new(@helpers)
  @unidades_page = UnidadesPage.new(@helpers)
  @download_directory = Dir.pwd + '/tmp/downloads'
end

Before do |scenario|
  $feature = scenario.feature.name
  $scenario = scenario.name
  puts "======= #{$scenario} ======="
  @tags = []
  scenario.tags.each do |tag|
    @tags << tag.name
  end
  $time = Time.now.strftime "%Y%m%d-%H%M%S"

  if ENV['BROWSER'] == 'chrome_headless'
    @headless = true
  end
end

After do |scenario|
  scenario_name = @base_page.to_pascal_case(scenario.name)
  FileUtils.mkdir_p('report') unless File.exist?('report')
  if scenario.failed?
    file_ss = File.join(Dir.pwd, "report/nok/NOK-#{scenario_name}.png")
  else
    file_ss = File.join(Dir.pwd, "report/ok/OK-#{scenario_name}-#{$time}.png")
  end
  screen_shot = File.new(page.save_screenshot(file_ss))
  path = file_ss.split('report/')[1]
  embed(path, screen_shot, scenario_name)
  Capybara.current_session.driver.quit
end
