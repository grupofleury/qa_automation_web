
class BaseScreen

  # todos os metodos tem a ideia para que nao se utilize mapeamento/funçoes do capybara direto.
  # a ideia é que seja de simples acesso e de programaçao rapida e objetiva.

  def self.identificator(element_name, &block)
    define_method(element_name.to_s, *block)
  end

  class << self
    alias value identificator
    alias action identificator
    alias trait identificator
  end

  def respond_to_missing?
    true
  end


  #metodo para clicar em qualquer menu da lista de opçoes do site
  def select_menu(element, text)
    list = find(element).all('li')
    el = list.collect(&:text)
    index = el.index(text.upcase) 
    list[index].click
  end

  #metodo usado para fazer o scroll da tela caso o elemento nao esteja na mesma, ate encontralo
  def scroll_element(element)
    execute_script "window.scrollBy(0,100)"
    while find(element).visible? == false
      execute_script "window.scrollBy(0,100)"
    end
  end

  # metodo para selecionar opçoes em combobox
  def select_combobox (element,list,option)
    find(element).click
    find(list, :text => option).click
  rescue 'Element not exist'
  end

  # metodo para realizar diferentes tipos de clicks
  def click element, text
    if text.nil?
      find(element).click
    else
      find(element, :text => text).click
    end
  rescue 'Element not exist'
  end

  #metodo para validar se o elemento mapeando tem o contem o texto informado
  def validate_text(element)
    el = find(element).text
    find(element, :text => /#{el}?/i)
  end

end
