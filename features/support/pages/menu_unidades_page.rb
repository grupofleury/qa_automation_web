class UnidadesPage
    include Capybara::DSL

    def acessa_menu_unidades
        visit '/unidades'
    end

    def selecionar_facilidades
    find(:xpath,'//*[@id="checkoox-select-facilities"]/div').click
    find('label[for="_Bicicletário e vaga verde"]').click
    find('label[for="_Atendimento aos domingos"]').click
    find('label[for="_Unidades em shoppings"]').click
    end
    
    def selecionar_unidade
        find('#button-see-on-map-2-shopping-analia-franco').click
    end
end