#language: pt
@visit
    Funcionalidade: Validar o nome da unidade
        Sendo um usuário da rede Fleury
        Posso utilizar o site da rede
        Para encontrar a melhor clinica a minha disposição

@validate
    Cenario: Validando unidade
        Dado que clico em unidade
        E vou escolho minhas opções em Filtro por Facilidade
        Quando o filtro trazer uma opção devo ir em Ver detalhes
        Então verifico se a clinica é a "República do Líbano I"
