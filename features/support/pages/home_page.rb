# Class HomePage
class HomePage < BasePage
  attr_reader :link_menu_unidades

  def initialize
    @link_menu_unidades = EL["link_menu_unidades"]
  end

  def access_units_menu
    find(link_menu_unidades).click
  end
end
