Dado('Que estou na página inicial') do
    # Abrinda a homepage do site
    start_test.load
  end
  
  Quando('Clico na opção Unidades') do
    # Clicando no link unidades no menu superior
    start_test.clickUnit
  end
  
  Quando('Seleciono os três primeiros filtros') do
    # Clicando na caixa de seleção de filtro de unidades
    start_test.openCheckbox
    # Selecionando as opções de filtro
    start_test.selectCheckbox
  end
  
  Quando('clico na opção Ver detalhes do primeiro resultado') do
    # Selecionando a opção "Ver detalhes da unidade"
    start_test.clickDetails
  end
  
  Então('verifico se acessou a unidade correta') do
    # Validando o elemento e título do resultado na página
    start_test.verifyElement
  end