# Capybara-base-project

Este projeto base usa como base:

* [Ruby](https://www.ruby-lang.org/pt/)
* [Capybara](http://teamcapybara.github.io/capybara/)
* [RSpec](http://rspec.info/)
* [Selenium Webdriver](https://www.seleniumhq.org/docs/03_webdriver.jsp)
* [webdrivers](https://github.com/titusfortner/webdrivers) - Gerenciador de WebDrivers semelhante ao WebDriverManager no Java
* [Cucumber](https://docs.cucumber.io/)

## Getting Started

As instruções abaixo servem para configuração do ambiente para rodar o projeto.

### Prerequisitos

Isso é o que já precisa ter instalado em sua máquina:

    Ruby

### Instalação

#### Para usuários Windows
 
A maneira mais simples é fazer a instalação pelo RubyInstaller

    https://rubyinstaller.org/

Na página de download, verifiique a sessão "WHICH VERSION TO DOWNLOAD?". 
Depois de baixar o arquivo, basta executar e next > next > finish, padrão Windows :)

#### Para usuários Linux:

Recomendo a instalação através do [RBENV](https://github.com/rbenv/rbenv)

    git clone https://github.com/rbenv/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
    echo 'eval "$(rbenv init -)"' >> ~/.bashrc
    exec $SHELL
    
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
    echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
    exec $SHELL
    
    rbenv install 2.6.6
    rbenv global 2.6.6
    ruby -v

Após a instalação do Bundler, recomendado que execute:

    rbenv rehash

## Instalar o Bundler

O Bundler é o gerenciador de pacotes/dependências em Ruby, para instalar, digite o comando abaixo no terminal:

    gem install bundler

Depois disso, as pŕoximas instalações serão feitas pelo próprio bundler. 

## Após baixar o projeto

Execute o comando abaixo para instalar as dependênias que estão dentro do arquivo "Gemfile" que está na raíz do projeto:

    bundle install

Esse comando fará a instalações as gems que você precisa para começar :)


## Executar os testes

Após instalar todas as dependências, basta executar:

    cucumber


* Para executar uma @tag específica com cucumber


    cucumber -t @tag

Onde @tag será o nome que você vai dar a tag.
Esta tag pode estar no Gherkin acima de uma feature ou cenário.

Exemplo: 

    @smoke
    Cenario: Login no portal
    Dado que faço o login
    Então vejo a página do "Dashboard"

Este cenário de login pode ser executado com o comando:

    cucumber -t @smoke


## Troubleshooting

#### Falha na inicialização do navegador / timeout

Já aconteceu em alguns momentos em que ao tentar executar o teste, o navegador não inicializou, retornando ao final um erro de timeout.
Isso pode ocorrer por uma atualização do Chrome na sua máquina, o chormedriver também precise ser atualizado, e por algum motivo isto não ocorreu automaticamente.

Pode ocorrer por exemplo, que a mesma versão do chromedriver não esteja disponível no repositório do chrome:

    This XML file does not appear to have any style information associated with it. The document tree is shown below.
    <Error>
    <Code>NoSuchKey</Code>
    <Message>The specified key does not exist.</Message>
    <Details>No such object: chromedriver/83.0.4103.97/chromedriver_linux64.zip</Details>
    </Error>

Nesse caso, primeiramente habilite o debug do webdriver para identificar o que pode estar acontecendo.
Verifique no arquivo "env.rb" a seguinte variável, altere para "true" conforme abaixo:

    debug_webdriver = true

Se está acontecendo a chamada mas o navegador não está abrindo, pode ser um problema de versão do chromedriver.

Primeiramente, o que pode ser feito é excluir manualmente os arquivos "chromedriver" e "chromedriver.version", que estará na sua máquina em:

    ~/.webdrivers
    
Em seguida tente executar os testes para verificar se o webdriver manager consegue fazer o download automaticamente.

Exemplo de log, onde o Webdriver Manager buscou a versão do seu chrome e está tentando baixar o chromedriver:

    2020-06-16 11:42:50 DEBUG Webdrivers Browser version: 83.0.4103.97
    2020-06-16 11:42:50 DEBUG Webdrivers Making network call to https://chromedriver.storage.googleapis.com/83.0.4103.97/chromedriver_linux64.zip

Pode acontecer também que há algum problema em conseguir buscar a última versão corretamente.
Você pode verificar na página do [chromedriver](http://chromedriver.chromium.org/downloads) qual é a última versão disponível compatível com seu chrome nesta página.

Você encontrará logo no topo da página, algo parecido com isso:

    Current Releases
    If you are using Chrome version 84, please download ChromeDriver 84.0.4147.30
    If you are using Chrome version 83, please download ChromeDriver 83.0.4103.39
    If you are using Chrome version 81, please download ChromeDriver 81.0.4044.138
    For older version of Chrome, please see below for the version of ChromeDriver that supports it.

Com a informação da última versão, você poderá setar manualmente a versão a ser utilizada pelo webdriver.

No arquivo "env.rb", haverá uma linha de configuração da versão do webdriver que pode estar comentada:

    Webdrivers::Chromedriver.required_version = '83.0.4103.39'
    
Após esta configuração, tente rodar o teste manualmente para verificar se o webdriver manager consegue baixar automaticamente.

Se mesmo assim, ainda tiver problemas e o chromedriver não for baixado corretamente, você poderá fazer o download manualmente no site do [chromedriver](http://chromedriver.chromium.org/downloads), descompactar o "chromedriver" e colocar dentro da pasta do webdriver.

    ~/.webdrivers
    
Crie também um arquivo chamado "chromedriver.version" e insira dentro dele a versão deste chromedriver que foi baixado, como por exemplo:

    83.0.4103.39

Ao rodar novamente os testes, provavelmente o chromedriver abrirá corretamente.

