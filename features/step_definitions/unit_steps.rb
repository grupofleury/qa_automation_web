Given('im on the {string} page') do |string|
  page = GLOBAL[page]
  visit(page)
end

When("i access the units page") do
  @unit.access_unit
end


When("i select the unit details") do
    @unit.select_unit
    @unit.unit_details
end


Then("the details of the unit are displayed") do
    @unit.unit_details
end