#Faz Screenshot do nos
module Helper
    def tira_foto(file_name, resultado)
        data = Time.now.strftime('%F').to_s
        h_m_s = Time.now.strftime('%H%M%S%p').to_s
        caminho = "results/evidencias/test_#{resultado}/#{data}/temp_screen#{h_m_s}.png"
        foto = "#{caminho}/#{ENV['BROWSER']}_.png"
        page.save_screenshot(foto, full: true)
        embed(foto, 'image/png', 'Ver_Evidencia')

    end
  end