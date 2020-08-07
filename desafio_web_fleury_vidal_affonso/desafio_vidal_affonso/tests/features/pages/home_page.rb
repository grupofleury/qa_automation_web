
# aqui foi criado a classe HomePage usando a gem SitePrism para facilicar o
#mapeamento dos elementos

class HomePage < SitePrism::Page

  #aqui é setado a url padrão que está salva na pasta ambiente homolog.yml 
    
  set_url ''

  # aqui é mapeado o link da home de "Unidades"
  element :link_unidades, '#button-title-desktop-header.unidades'

 # aqui é criado o método para clicar no link de unidades da home_page
  def unidades
      self.link_unidades.click
    end
    
  end