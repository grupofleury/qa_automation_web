#Tira screenshot da pagina

After do |scenario|
  # Se meu senario falhar tira um print e salva no caminho que defino em helper.rb
    scenario_name = scenario.name.gsub(/[^A-Za-z ]/, '').gsub(/\s+/, '_')
  
    if scenario.failed?
       # Se meu senario falhar tira um print e salva no caminho que defino em helper.rb
      tira_foto(scenario_name.downcase!, 'failed')
    else
      tira_foto(scenario_name.downcase!, 'passed')
    end
  end

  Before do
    #Comando para maximizar a tela antes da execução dos testes
    page.driver.browser.manage.window.maximize
   
  end