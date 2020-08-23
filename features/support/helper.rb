# Módulo para criar as evidencias do projeto.

module Helper
    def tira_foto(file_name, resultado)
      data = Time.now.strftime('%F').to_s
      h_m_s = Time.now.strftime('%H%M%S%p').to_s
      caminho = "prints/screenshot/teste_#{resultado}/#{data}"
      foto = "#{caminho}/#{h_m_s}.png"
      page.save_screenshot(foto, full: true)
      attach('image/png', 'Ver_Evidencia')
    end
  end