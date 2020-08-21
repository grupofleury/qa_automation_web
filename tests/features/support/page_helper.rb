#criação de um arquivo 'helper' para instanciar todos os objetos das etapas, 
#em caso de haver mais de um arquivo page e tbm pra evitar instanciar o tempo inteiro
Dir[File.join(File.dirname(__FILE__), '../pages/*Page.rb')].each{ |file| require file }

module PageObjects

    def home
        @home ||= Home.new    
    end

    def unidades
        @unidades ||= Unidades.new
    end

    def opcoes
        @facilidade ||= Opcoes.new
    end

    def detalhes
        @detalhes ||= Detalhes.new
    end

    def nomeUnidade
        @unidade ||= NomeUnidade.new
    end

end
