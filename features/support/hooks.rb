require 'report_builder'
require 'date'
require 'base64'

# Executa antes dos testes
Before do
    # redimensiona a janela do browser
    page.current_window.resize_to(1440, 900)

    # Inicializa os parâmetro das pages antes de rodar os testes
    @home_page = HomePage.new
    @unity_page = UnityPage.new
end

After do |scenario|
    # if scenario.failed?
        temp_shot = page.save_screenshot('log/temp_shot.png')
        screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
        embed(screenshot, 'image/png', 'Screenshot')
    # end
end

d = DateTime.now
@current_date = d.to_s.tr(':', '-')

at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'log/report.json'
        config.report_path = 'log/report'
        config.report_types = [:html]
        config.report_title = 'Desafio Fleury - Web'
        config.compress_image = true
        config.additional_info = { 'App' => 'Web', 'Data de execução' => @current_date }
        config.color = 'indigo'
    end
    ReportBuilder.build_report
end