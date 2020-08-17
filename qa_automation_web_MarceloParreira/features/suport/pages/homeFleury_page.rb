#Camada responsável por criar métodos e mapear elementos utilizando sitePrism para facilidade na manutenção.

class HomeFleury_page < SitePrism::Page
    include Capybara::DSL

    element :unidades, ("a[href='/unidades']")
    def checarUnidade
        unidades.click
    end
end