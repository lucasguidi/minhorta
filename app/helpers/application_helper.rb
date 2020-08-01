module ApplicationHelper
    
    def state(state)
        return "Ativo" if state == true
        "Inativo"
    end

    def change_state(state)
        return "Desativar" if state == true
        "Ativar"
    end

end
