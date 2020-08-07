
# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

# Modulos para instanciar classes que estão na page 
module Page
  def home_page
    @home_page ||= HomePage.new
  end
  def unidades_page
    @unidades_page ||=UnidadesPage.new
  end
  def validacao_page
    @validacao_page ||= ValidacaoPage.new
  end

end