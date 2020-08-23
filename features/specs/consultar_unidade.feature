#language: pt

Funcionalidade: Eu como cliente quero fazer uma pesquisa no site
da Fleury e ver o nome da unidade mais próxima que 
melhor atenda minhas especificações.

@buscar_unidade
Cenario: Consultar nome de unidade mais próxima.  
 Dado que eu esteja no site da Fleury
 E realizo um filtro por facilidades
 Quando finalizo a pesquisa
 Então o site irá retornar a unidade "Paraíso" para mim.