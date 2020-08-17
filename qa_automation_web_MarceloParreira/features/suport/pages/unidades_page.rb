#Camada responsável por criar métodos e mapear elementos utilizando sitePrism para facilidade na manutenção.
class Unidades_page < SitePrism::Page
    include Capybara::DSL

    element :facilidades, ("#checkoox-select-facilities")
    element :vacinacao, 'label[for="_Vacinação"]'
    element :bicicletario, 'label[for="_Bicicletário e vaga verde"]'
    element :atendDom, 'label[for="_Atendimento aos domingos"]'
    element :detalhesLibano, ("#button-see-on-map-2-republica-do-libano-i")

    def facilidadesClick
        facilidades.click
    end

    def facilidadesCheck
        bicicletario.click
        vacinacao.click
        atendDom.click
    end

    def verDetalhesUnidadeLibano
        detalhesLibano.click
    end

end