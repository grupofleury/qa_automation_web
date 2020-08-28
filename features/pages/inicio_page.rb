class InicioPage < SitePrism::Page

   def listar_unidades
      all('div[class="boxcomponentstyle__Item-sc-43ermp-1 hhcXYp"]').select {|elt| elt.text == "Unidades" }.first.click
   end

   def selecionar_unidade_checkbox
      page.first('div[class="checkbox-selectcomponentstyle__CheckboxSelectPlaceholderStyled-sc-7ktrvg-2 jgzIlF"]').click
      all('div[class="checkbox-fieldcomponentstyle__CheckboxFieldStyled-sc-1mdajsk-0 DRDNI"]').first.click
   end

   def obter_nome_facilidade
      all('h3[class="typographycomponentstyle__H3-sc-1oox73n-3 caOpMn"]').first.text
   end

   def selecionar_facilidade
      all('a[class="buttoncomponentstyle__LinkButtonStyled-sc-11us3l0-2 eBMXFO ver-detalhes"]').first.click
   end

   def comparar_nome_unidade(nome_unidade)
      puts "nome da unidade na pagina unidade: "+page.first('h1[class="typographycomponentstyle__H1-sc-1oox73n-1 lomAMa"]').text
      page.first('h1[class="typographycomponentstyle__H1-sc-1oox73n-1 lomAMa"]').text.should == nome_unidade
   end
end