Dir[File.join(File.dirname(__FILE__),
    '../pages/*_page.rb')].each { |file| require file}

module Pages
    def start_test
        @start_test ||= ValidateUnitPage.new
    end
end