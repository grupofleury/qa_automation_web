# frozen_string_literal: true

class Unit
  include Capybara::DSL
  include RSpec::Matchers
  attr_reader(*EL.keys.map(&:to_sym))
  def initialize
    @core = Core.new
    @logic = Logic.new
    EL.map { |key, _value| instance_variable_set("@#{key}", EL[key]) }
  end

  def access_unit
    @core.click_element(header_unidade)
  end

  def select_unit
    @core.click_element(chk_facilidade)
    @core.click_element(opt_bicicletario)
    @core.click_element(opt_vacinacao)
    @core.click_element(opt_atendimento)
    @core.click_element(btn_detalhe)
  end

  def unit_details
    @logic.verify_text(txt_libano, 'República do Líbano')
  end
end
