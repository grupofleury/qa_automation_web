#language:pt
Funcionalidade: Validar localidade

    Sendo um agente da qualidade, quero validar a localidade das unidades Fleury

@endereco
Esquema do Cenário: Validar localidade

    Dado que acesso o portal Fleury
    Quando realizar a busca pelo <estado> 
    Então devo acessar a localidade e validar o <endereco>

     Exemplos: 
        | estado             | endereco                                                          |
        | "distrito federal" | "SEPS 715/915, Conjunto A, Bloco E - Asa Sul - DF, CEP: 70390-155"|

# comentário: Aqui estou trabalhando com Esquema de Cenario pois acredito ser a melhor tecnica
# a ser utilizada, prevendo a adição de novas localidades e endereços alimentando somente a tabela.
