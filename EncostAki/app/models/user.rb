class User < ApplicationRecord
    
    validates :Fname, presence: true
    validates :Mname, presence: true

    def descricao_completa
        "First Name: #{self.Fname}, Middle Name: #{self.Mname}, Usuário: #{self.username}, Senha: #{self.senha}"
    end
end
