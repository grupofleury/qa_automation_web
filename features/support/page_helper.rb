Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

module PageObjects

    #Método que instância a classe home.
    def home
        @home ||= Home.new
    end
end