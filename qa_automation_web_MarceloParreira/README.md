Utilizado Ruby + Capybara + cucumber + Rspec


Instalando dependencias:
    - Abrir Prompt de Comando
    - Entrar na pasta qa_automation_web_marceloParreira
    - Digitar Bundler Install
    - Ter o chromedriver instalado com a mesma versão do chrome atual https://chromedriver.chromium.org/downloads


Executando projeto:
    Depois que as dependencias forem instaladas
    - Ainda no Prompt Digite: Cucumber

Utilzei Page Objects com a Gem  SitePrism para facilitar possiveis manutenções futuras.
Criei a homeFleury_page com os elementos link "Unidades" naquela página,
unidades_page para mapear os elementos da página unidades e criado os métodos de filtros e o link da unidade que Republica do Libano. 

criado a estrura Abaixo:
features > Suport > Pages (ficam as classes do pageObeject)> Spec( que fica a especificação o BDD) > Step_definition (fica os passos do bdd que serão executados) e na pasta support toda a configuração  ambiente > log (relatório da execução em html)

