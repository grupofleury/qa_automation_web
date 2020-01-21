#language: pt

Funcionalidade: Validar o endereço através do site Fleury
  EU COMO usuário do sistema
  GOSTARIA de validar o endereço da unidade
  PARA verificar as informações apresentadas

  Contexto: Acesso ao site Fleury
    Dado que o usuário acessa a home page

  Cenário: Validar o endereço da unidade no Distrito Federal
    Dado que o usuário acesse o menu Unidades
    Quando selecionar a unidade de Brasília
    Então o sistema deverá apresentar o endereço
    """
    SEPS 715/915, Conjunto A, Bloco E - Asa Sul - DF, CEP: 70390-155
    """