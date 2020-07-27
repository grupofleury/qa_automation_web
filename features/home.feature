#language: pt

#Ambos tem a mesma finalidade, porém um acessa pelo clique no menu Unidades
#e o outro acessa pela url /unidades

Funcionalidade: Selecionar a unidade de acordo com as facilidades
Para que eu possa acessar a página de Unidades
Devo estar na página Home ou passar a URL específica
Sendo assim conseguirei realizar a pesquisa de acordo com as facilidades selecionadas

Cenário: Acessar página Unidades pelo Menu e selecionar a unidade
Dado que estou na página Home
E acesso o menu Unidades
Quando seleciono as Facilidades
E seleciono a unidade
Então devo ver o resultado com o nome da unidade selecionada

Cenário: Acessar página Unidades pela URL e selecionar a unidade
Dado que estou na página Unidades
Quando seleciono as Facilidades
E seleciono a unidade
Então devo ver o resultado com o nome da unidade selecionada