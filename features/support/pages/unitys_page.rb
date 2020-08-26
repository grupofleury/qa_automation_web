class UnityPage
    # Incluindo as libs do Capybara
    include Capybara::DSL

    def select_facilities(params = {})
        # Clicando no dropdown de Facilidades
        find('#checkoox-select-facilities').click

        # Pegando os parâmetros do array
        facility = params.fetch(:f, nil)
        
        # Selecionando os tipos de facilidades através dos parâmetros carregados do array de hashes
        find('label div .hwutpP', text: facility[0].values[0]).click
        find('label div .hwutpP', text: facility[1].values[0]).click
        find('label div .hwutpP', text: facility[2].values[0]).click
    end

    def details
        # Clica em Ver Detalhes no primeiro card que aparecer
        find('.fHFDYJ .juXfhN', text: 'Ver detalhes').click
    end
end