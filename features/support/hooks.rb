require "report_builder"
require "date"

Before do |scn|
  window = Capybara.current_session.current_window
  window.resize_to(1366, 768)
  window.maximize

  @page = lambda do |klass|
    klass.new
  end
end

After do |scn|
  if ENV["screenshot"]
    screenshot = HooksConfig.take_screenshot(scn)
    embed(screenshot, "image/png;base64")
  end
end

at_exit do
  @infos = {
    "Browser" => Capybara.default_driver.to_s.capitalize,
    "Environment" => ENV["ENV_PREFIX"],
    "Data do Teste" => Time.now.to_s,
  }

  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "[Fleury] - QA Automação - Desafio Web"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
