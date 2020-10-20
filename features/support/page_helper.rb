Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file }

# Modulos para chamar as classes instanciadas
module Pages
    def home_page
        homePage = HomePage.new
    end
    
    def unidades
        unidades = UnidadesPage.new
    end
end
