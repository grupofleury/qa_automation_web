# language: pt
Funcionalidade: Unidades

  Cenário: Validação do endereço da unidade de Brasília
    Dado que acesso o menu 'Unidades' na pagina inicial
    Quando eu pesquiso pela sede de 'Distrito Federal'
    E seleciono a cidade de 'Brasília'
    Então confirmo o endereço 'NOVO ENDEREÇO SEPS 715/915, Conjunto A, Bloco E Centro Clínico Pacini - Asa Sul Brasília - DF 70390-155'