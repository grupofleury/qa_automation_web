
class BaseScreen

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

  def get_element(element)
    begin
      if element.is_a? Array
        case element.size
        when 2
          selector = element[0].to_sym
          element = element[1]
          el = find(selector, element)
        when 3
          selector = element[0].to_sym
          count = (element.size == 3 ? element[2].to_i : 0)
          element = element[1]
          el = find(selector, element)[count]
          if el.nil?
            raise Selenium::WebDriver::Error::NoSuchElementError, \
                  "The element #{element} was not found"
          end
        end
      else
        el = find :id, element
      end
    rescue StandardError => e
      if e.class.to_s.include?('InvalidSessionIdError' || 'NoSuchDriverError' || 'UnknownError')
        raise e
      else
        raise Selenium::WebDriver::Error::NoSuchElementError, \
              "Could not find the element #{element}"
      end
    end
    el
  end


  #metodo para clicar em qualquer menu da lista de opçoes do site
  def select_menu(element, text)
    list = find(element).all('li')
    el = list.collect(&:text)
    index = el.index(text.upcase) 
    list[index].click
  end

  def scroll_element(element)
    execute_script "window.scrollBy(0,100)"
    while find(element).visible? == false
      execute_script "window.scrollBy(0,100)"
    end
  end

  def select_combobox (element,list,option)
    find(element).click
    find(list, :text => option).click
  rescue 'Element not exist'
  end

  def click element, text
    if text.nil?
      find(element).click
    else
      find(element, :text => text).click
    end
  rescue 'Element not exist'
  end

  def validate_text(element)
    el = find(element).text
    find(element, :text => /#{el}?/i)
  end

end
