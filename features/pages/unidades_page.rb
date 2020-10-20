class UnidadesPage < SitePrism::Page
  set_url:'/unidades'
  set_url:'/unidades{/unidade}'
  element :dropbox_unidades, '#checkoox-select-facilities'

  #metodo criado para clicar no dropbox e escolher itens POR ORDEM
  def escolher_por_ordem(ordem_dos_itens)
    dropbox_unidades.click
    for i in 0..ordem_dos_itens-1
      page.all('label div .hwutpP')[i].click
    end
  end

  #Buscando o link pelo texto assim evitando as classes dinamicas
  def clicar_primeira_unidade_disponivel
    first(:link, 'Ver detalhes').click
  end



end
