# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__),
  '../pages/*.rb')].each { |file| require file }

# modulos para chamar as classes instanciadas
module Pages
  def valida_nome
    ValidaNome.new
  end
end
