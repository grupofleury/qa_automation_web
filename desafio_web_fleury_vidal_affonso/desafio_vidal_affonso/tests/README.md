Utilizado Ruby + Capibara + cucumber + Rspex
- Todas as minhas dependencias estão declaradas no arquivo Gemfile

Instalando dependencias:
    - Abrir Prompt de Comando
    - Entrar na pasta init_automation
    - Digitar Bundler Install
    - Ter o chromedriver instalado com a mesma versão do chrome atual https://chromedriver.chromium.org/downloads
    - Ter o gechodriver instalado https://github.com/mozilla/geckodriver/releases
    - O teste está configurado para rodar no chrome abrindo o browser configuração no arquivo Cucumeber.yml

Executando projeto:
    Depois que as dependencias forem instaladas
    - Ainda no Prompt Digite: Cucumber

Utilzei Page Objects com a Gem  SitePrism um método que fica mais fácil para dar manutenção futuras.Criei a home_page foi instaciado os elementos link "Unidades" naquela página,
UnidadesPage para mapear os elementos da página unidades e criado os métodos de filtros e o link da unidade que Republica do Libano que eu escolhi. e ValidacaoPage para validar o resultado do teste que eu fiz que tinha que validar um H1 com nome da unidade
Foi criado a estrura que utilizo atualmente  de pastas 
 Tests > features > Pages (ficam as classes do pageObeject)> Spec( que fica a especificação o BDD) > Steps (fica os passos do bdd que serão executados) e na pasta support toda a configuração  ambiente ( está informada a Url usada) Helper (para tirar o screenshoot) Page Helper Modulos para instanciar classes que estão na page 

 Os relatórios e screnshoots estão na  pasta results 
