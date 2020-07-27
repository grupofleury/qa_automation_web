#Utilizarei o padrão de pageObjects para facilitar na manutenção do dia-a-dia.
#Está sendo criado um arquivo para cada página, ficando com um código mais limpo 
#e de fácil entendimento.
class HomePage
    include Capybara::DSL
    def go
        visit '/'
    end

    def link_unidades
        click_link 'Unidades'
    end
end