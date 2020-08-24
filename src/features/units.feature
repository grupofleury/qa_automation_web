# language: pt
@unidades
Funcionalidade: Unidades

  Contexto:
    Dado que estou na página inicial

  Cenário: Filtrar unidades por opções de facilidade
    Quando acesso a página de "Unidades"
    E filtro as unidades pelas facilidades
      | Bicicletário e vaga verde | true  |
      | Vacinação                 | false |
      | Atendimento aos domingos  | true  |
      | Unidades em shoppings     | true  |
      | Próximo ao metrô          | false |
      | Atendimento noturno       | false |
    E clico para ver os detalhes da unidade do 1º resultado
    Então a página de detalhe correspondente a unidade será exibida com sucesso
