# language: pt

Funcionalidade: Validar unidade de atendimento 
    Sendo uma cliente desejo consultar a unidade de atendimento Fleury
   

@Consultar_unidade
    Cenario: Consultar unidade de atendimento República do Líbano
    Dado que a cliente esteja no site da fleury 
    E clica em unidades 
    E clica em filtrar por facilidade
    E seleciona três facilidades   
    E clica em ver detalhes
    Entao é exibido a unidade  "republica-do-libano-i"


