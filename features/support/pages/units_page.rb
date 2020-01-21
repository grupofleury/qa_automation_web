# Class UnitsPage
class UnitsPage < BasePage
  attr_reader :link_unidade_brasilia

  def initialize
    @link_unidade_brasilia = EL["link_unidade_brasilia"]
  end

  def units_brasilia
    find(link_unidade_brasilia, text: "Brasília").click
  end
end
