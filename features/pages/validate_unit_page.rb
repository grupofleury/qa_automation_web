class ValidateUnitPage < SitePrism::Page
    set_url '/'
    
    element :click_unit,     '#button-title-desktop-header.unidades'
    element :open_checkbox,  '#checkoox-select-facilities'
    element :checkbox_1,     'label[for="_Bicicletário e vaga verde"]'
    element :checkbox_2,     'label[for="_Vacinação"]'
    element :checkbox_3,     'label[for="_Atendimento aos domingos"]'
    element :click_details,  '.ver-detalhes'
    element :verify_title, '.lomAMa'

    def clickUnit
        click_unit.click
    end

    def openCheckbox
        open_checkbox.click
    end
    
    def selectCheckbox
        checkbox_1.set(true)
        checkbox_2.set(true)
        checkbox_3.set(true)
    end

    def clickDetails
        click_details.click        
    end

    def verifyElement
        verify_title
    end
end