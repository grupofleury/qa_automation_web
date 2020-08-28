Dado('que o usuário esteja na pagina inicial da fleury') do
    visit 'https://www.fleury.com.br/'
    @inicio_page = InicioPage.new
end

Quando('acesso uma opção de facilidade') do
    # puts "nome_unidade exists:"#+@inicio_page.nome_unidade.exists?
    @inicio_page.listar_unidades
    @inicio_page.selecionar_unidade_checkbox

    @facilidade = @inicio_page.obter_nome_facilidade
    log "nome da facilidade: "+@facilidade
    @inicio_page.selecionar_facilidade
end

Então('é possivel validar o nome da unidade') do
    @inicio_page.comparar_nome_unidade(@facilidade)
end