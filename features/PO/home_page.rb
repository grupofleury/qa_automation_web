class HomePage < SitePrism::Page
  set_url 'https://www.fleury.com.br/'
  element :unidades, :xpath, '//*[@id="button-title-desktop-header"]/div[contains(text(), "Unidades")]/..'
end