class Helpers
  include Capybara::DSL

  def initialize
    app = $config['APP']
    @url = app['URL']
  end
end
