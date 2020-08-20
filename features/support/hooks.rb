World(Helper)

# Nomes dos prints dos testes
After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')
    scenario_name = scenario_name.delete(',', '')
    scenario_name = scenario_name.delete('(', '')
    scenario_name = scenario_name.delete(')', '')
    scenario_name = scenario_name.delete('#', '')
    
# Laço dos prints dos testes    
    if scenario.failed?
        take_screenshot(scenario_name.downcase!, 'failed')
    else
        take_screenshot(scenario_name.downcase!, 'passed')
    end
end