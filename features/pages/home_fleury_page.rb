class Home < SitePrism::Page
    
    set_url '/unidades'

    #Elementos e seletores que serão utilizados no projeto.
     element :filtro, "#checkoox-select-facilities > svg" 
     element :metro, 'label[for="_Próximo ao metrô"]'   
     element :noturno,'label[for="_Atendimento noturno"]'
     element :unifleury,"#button-see-on-map-2-paraiso"
     element :nome_unidade, :xpath, "//h1[contains(.,'Paraíso')]"

     
      
    #Métodos que irão "chamar" os elementos/seletores acima.  
    def buscar
        sleep(3)
        filtro.click
        wait_until_filtro_visible
    end

    def selecionar
        metro.click
        noturno.click
    end

   def retornar
       unifleury.click
   end

  def mostrar
      nome_unidade.text 
  end       
end














