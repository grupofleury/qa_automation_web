#uso essa classe para deixar o find/expect/wait.

class Logic
  include RSpec::Matchers
  include Capybara::DSL

  def verify_text(elm, msg)
    expect(find(elm)).to have_content msg
  end

  def expect_elm(elm)
    expect(page).to have_xpath(elm, visible: true)
  end

end
