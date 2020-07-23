# language: pt

@validar_nome_unidade
Funcionalidade: Validação de Nome

Contexto:
  Dado que acesse o site Fleury

Esquema do Cenario: Validar o Nome da Unidade
  Quando clico no link Unidades
  E escolho as opções de Facilidade 
  E clico em Ver Detalhes
  Então valido o '<nome_da_unidade>'

Exemplos:
|    nome_da_unidade    |
| República do Líbano I |