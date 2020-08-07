#criei uma classe para fazer a validação giardando os textos das páginas, para não chumbar
# códigos nos steps

class ValidacaoPage  < SitePrism::Page
    #metodo que retorna o texto do H1 da minha pesquisa retornou Republica do Libado
    def nome_unidade
      "República do Líbano I"
    end

    #metodo para ar etornaro título da página que estou validando
    def titulo_pagina
        "Unidade República do Líbano I › Laboratórios | Fleury Medicina e Saúde"
    end
  
  end