class User < ApplicationRecord
    
    validates :name, presence: true
    validates :cpf, presence: true

    def descricao_completa
        "Nome: #{self.name}, CPF: #{self.cpf}, Usuário: #{self.username}, CEP: #{self.cep}, Nº: #{self.house_number}, Complemento: #{self.complement}"
    end
end
