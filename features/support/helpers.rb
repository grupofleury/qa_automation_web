module Helpers
    def get_unity_name
        # Timeout para localizar o elemento do nome da Unidade na página da unidade, sem precisar utilizar o sleep na camada de steps
        3.times do
            @unity_name = find('div h1').text
            sleep 1
        end
        @unity_name
    end
end