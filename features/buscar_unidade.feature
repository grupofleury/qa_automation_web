#language: pt

@home
Funcionalidade: Busca por unidade de atendimento
    Para que eu possa agendar um exame e/ou obter informações sobre uma unidade
    Sendo um usuário novo
    Posso acessar o site e procurar pela unidade que melhor me atende

    Cenario: Buscar unidade por facilidade

        Dado que eu acesso o site da Fleury
        Quando realizo uma pesquisa por unidade filtrando por falicidade:
            | falicidade                |
            | Vacinação                 |
            | Próximo ao metrô          |
            | Atendimento noturno       |
        E acesso a página de detalhes
        Então devo visualizar a página da unidade "Paraíso"