# language: pt

Funcionalidade: Validar nome de uma unidade no site Fleury

- Encontrar uma unidade a partir de filtros pré-definidos no site

Cenário: Encontrar uma unidade Fleury
Dado Que estou na página inicial
Quando Clico na opção Unidades
E Seleciono os três primeiros filtros
E clico na opção Ver detalhes do primeiro resultado
Então verifico se acessou a unidade correta