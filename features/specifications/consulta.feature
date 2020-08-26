#language: pt
Funcionalidade: Validar o nome da unidade exibida em tela

Cenário: Confirmar que a unidade Paraíso foi exibida
  Dado que acesso o site Fleury
  Quando clico em Unidades
  E seleciono os seguintes filtros por facilidade "Vacinação|Próximo ao metrô|Atendimento noturno"
  E clico em ver detalhes da primeira unidade
  Então o nome da unidade deve ser "Paraíso"