class HomePage < SitePrism::Page
  set_url:'/'

  #fiz dessa forma para não ficar um unico link e sim de forma dinamica
  def escolher_link(escolha)
    find('#button-title-desktop-header > div', text: escolha).click
  end

end
