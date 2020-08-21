class Home < SitePrism::Page
    set_url 'https://www.fleury.com.br/'

end
    class Unidades < SitePrism::Page
        element :units, '.unidades'
        element :facilidades, '#checkoox-select-facilities'
    end

    class Opcoes < SitePrism::Page
        element :facilidade, '#checkoox-select-facilities'
        element :bike, "label[for='_Bicicletário e vaga verde'] > *"
        element :vacina, "label[for='_Vacinação'] > *"
    end

    class Detalhes < SitePrism::Page
        element :verDetalhes, '#button-see-on-map-2-analia-franco-ii'
    
    end

    class NomeUnidade < SitePrism::Page
        element :unidade, 'h1'
    end

    