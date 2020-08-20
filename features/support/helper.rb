require 'fileutils'

# Modulo com as definições dos prints e geração de relatório
module Helper
    def take_screenshot(file_name, result)
        timer_path = Time.now.strftime('%F').to_s
        file_path = "results/screenshots/test_#{result}/run_#{timer_path}"
        screenshot = "#{file_path}/#{file_name}.png"
        page.save_screenshot(screenshot)
        attach(screenshot, 'image/png')
        # embed(screenshot, 'image/png', 'Abrir Imagem')
    end
end