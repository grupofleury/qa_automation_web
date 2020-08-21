#language: pt
@verificar
Funcionalidade: Validar o nome da unidade dentro dos detalhes das unidades

como usuario do site
Eu quero acessar a aba unidade e verificar se o nome da unidade é apresentada nos detalhes da mesma

Contexto: Verificar o nome da unidade nos detalhes
Dado que o usuário possa acessar o site

Esquema do Cenário: validar o nome da unidade nos detalhes da unidade
Quando eu clicar na aba unidades
E selecionar uma ou três opções de facilidade
E clicar nos detalhes da primeira unidade exibida
Então o sistema deverá exibir o nome completo da unidade
