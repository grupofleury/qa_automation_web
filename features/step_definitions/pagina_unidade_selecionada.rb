Então('devo ver o resultado com o nome da unidade selecionada') do
  expect(page).to have_content('Shopping Anália Franco')
  expect(page).to have_content('Avenida Regente Feijó, 1739, Piso Acácia, Loja 37 E - Vila Regente Feijo - SP, CEP: 03342-900')
end