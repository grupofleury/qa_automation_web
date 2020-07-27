Dado('que estou na página Home') do
    @home.go
end
  
Quando('acesso o menu Unidades') do
   @home.link_unidades
   expect(page).to have_content('Você está em: ')
end
 