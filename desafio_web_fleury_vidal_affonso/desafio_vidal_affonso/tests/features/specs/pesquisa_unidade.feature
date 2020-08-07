
#language: pt
Funcionalidade: Realizar uma pesquisa de unidade no site Fleury

Contexto: Logar no site Fleury
      Dado que esteja logado no site do Fleury

  @test
  Cenario: Validar o nome da unidade República do Líbano I no site fleury
      Dado que ja esteja logado e clico no link unidades
      Quando é aplicado os filtros  
      |"facilidade"                            |
      |"Bicicletário e vaga verde"             |
      |"Vacinação"                             |  
      |"Atendimento aos domingos"              |
      E clicando no link Ver Detalhes 
      Então a unidade República do Líbano I é exibida.