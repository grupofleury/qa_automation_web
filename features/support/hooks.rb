#Tira screenshot da pagina
After do |scenario|
    scenario_name = scenario.name.gsub(/[^\w\-]/, ' ')
  
    if scenario.failed?
      # Se meu cenario falhar tira um print e salva no caminho que defino em helper.rb
      tira_foto(scenario_name.downcase!, 'falhou')
    else
      # Se meu cenario falhar tira um print e salva no caminho que defino em helper.rb
      tira_foto(scenario_name.downcase!, 'passou')
    end
  end