class MainPage < SitePrism::Page

    set_url 'https://www.fleury.com.br/'

    element :unidades_link, '#gatsby-focus-wrapper > div.client-doctor-headercomponentstyle__DesktopBottomHeaderStyled-sc-143rvxa-1.buLOJS > div > div > div > div > div:nth-child(16) > a > div'
    element :buscarendereco, '#gatsby-focus-wrapper > div.sc-bdVaJa.gridcomponent__GridStyled-mj69zp-0.lfrlah > div.sc-bwzfXH.gridcomponent__RowStyled-mj69zp-1.hWkzDC > div:nth-child(1) > form > div.text-fieldcomponentstyle__TextFieldWrapperStyled-sc-10y6p2x-2.gZWwiq > input'
    element :unidade, '#gatsby-focus-wrapper > div.backgroundstyled__NeutralBackground-sc-1r7978j-3.gNMhwv > div.sc-bdVaJa.gridcomponent__GridStyled-mj69zp-0.lfrlah > div:nth-child(2) > div:nth-child(1) > div > a > div:nth-child(1) > div > div > div.boxcomponentstyle__Item-fsdxo7-1.fzmNdx > h3'

end

# Utilizo muito page objects para mapeamento dos elementos web pois eles facilitam a leitura do main code
# ocultando os códigos html dos elementos e melhoram a manutenção do código, visto que páginas web estão
# em constante atualização  
