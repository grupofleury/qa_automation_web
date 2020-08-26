class HomePage
    include Capybara::DSL

    # Acessa a página inicial
    def go
        visit '/'
    end

    # Acessa a página de Unidades clicando no menu Unidades
    def unity_access
        find('#button-title-desktop-header', text: 'Unidades').click
    end
end