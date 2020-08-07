# aqui foi criado a classe UnidadesPage usando a gem SitePrism para facilicar o
#mapeamento dos elementos


class UnidadesPage < SitePrism::Page

#aqui foi mapeado todos os elementos que eu utilizo no teste na página das unidades
#elemento filtro e a escolha dos checkbox 

  element :filtro_unidade, '#checkoox-select-facilities'
  element :checkoox_bicicletario, 'label[for="_Bicicletário e vaga verde"]'
  element :checkoox_vacinacao, 'label[for="_Vacinação"]'
  element :checkoox_domingos, 'label[for="_Atendimento aos domingos"]'
  element :link_ver_detalhes, '#button-see-on-map-2-republica-do-libano-i'

# aqui crio os métodos selecionar os filtros e o link de ver detalher

    def selecionar_filtros
     self.filtro_unidade.click
     self.checkoox_bicicletario.click
     self.checkoox_vacinacao.click
     self.checkoox_domingos.click
    end



    def ver_detalhes
        self.link_ver_detalhes.click
    end
    
  end