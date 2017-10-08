require 'rails_helper'

RSpec.describe User, type: :model do
    context "Validade de um Usuario" do
        it "Usuario valido?" do
            user = User.new
            user.name = "James"
            user.cpf = "34597654432"

            expect(user.valid?).to be_truthy
        end

        it "Usuario invalido?" do
            user = User.new
            user.name = "James"

            expect(user.valid?).to be_falsey
        end
    end

    context "Validade de uma descrição de Usuario" do
        it "Descrição completa" do
            user = User.new
            user.name = "James"
            user.cpf = "34597654432"
            user.name = "James"
            user.cpf = "34597654432"
            user.username = "james"
            user.cep = "51170489"
            user.house_number = "51"
            user.complement = "Perto da praça"

            expect(user.descricao_completa).to eql("Nome: James, CPF: 34597654432, Usuário: james, CEP: 51170489, Nº: 51, Complemento: Perto da praça")
        end
    end
end
