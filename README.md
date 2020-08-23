PROJETO: 

Fleury - QA Automação Desafio Web.

###########################################################################################

CRITÉRIO DE ACEITE: 

O Objetivo do teste consiste em validar o Nome da unidade que é exibida na tela, através do site Fleury.

#############################################################################################

TECNOLOGIAS APLICADAS:

Ruby 
Cucumber 
Capybara 
Site_prism 
IDE: VsCode

#############################################################################################

ESTRUTURA DO PROJETO:

Pasta Testes contém as pastas:

features -> Com as pages, feature files, steps definitions e a support com as configurações
de ambientes e classes.

prints -> Armazena os screenshots, mostrando se o teste passou ou falhou

reports -> Armazena o Relatorio.html do Cucumber

cucumber.yml -> Arquivo de configuração de ambiente/relatórios.

Gemfile -> Biblioteca de dependências(gems) do Ruby.

#############################################################################################

COMO EXECUTAR O PROJETO?

Dentro da estrutura -> [automacao_fleury/testes], dar o comando cucumber no terminal ou cucumber -t @buscar_unidade.

#############################################################################################

CONSIDERAÇÕES SOBRE O PROJETO:

Projeto funcionou corretamente, porém o elemento :filtro, "#checkoox-select-facilities > svg"
quebrou os testes algumas vezes, por conta de não ser encontrado na tela.
Então coloquei um sleep + wait_until_filtro_visible no método buscar, com isso o teste não quebrou mais, caso volte a quebrar na primeira tentativa, execute mais de 1 vez.

#############################################################################################

SOBRE O AUTOR:

    Nome:  Rodrigo Carlos de Souza
   Email:  rodrigocarlosuniban@yahoo.com.br
  Github:  https://github.com/rodrigosouza83
LinkedIn:  https://www.linkedin.com/in/rodsouza83/

#############################################################################################