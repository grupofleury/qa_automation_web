After do |scenario|
    add_screenshot(scenario)
 end

 def add_screenshot(scenario)
    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
    nome_cenario = nome_cenario.gsub(' ','_').downcase!
    screenshot = "./reports/screenshots/#{nome_cenario}.png"
    page.save_screenshot(screenshot)
    embed(screenshot, 'image/png', 'Print anexo')
 end

 # criei este after no hooks para tirar o print ao termino do cenario