#  frozen_string_literal: true

After do |scenario|
  Capybara.current_session.driver.quit
end