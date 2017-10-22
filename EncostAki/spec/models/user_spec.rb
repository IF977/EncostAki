require 'rails_helper'

RSpec.describe User, type: :model do
    context "Validade de um Usuario" do
        it "Usuario valido?" do
            user = User.new
            user.Fname = "James"
            user.Mname = "Watson"
            user.senha = "34597654432"

            expect(user.valid?).to be_truthy
        end

        it "Usuario invalido?" do
            user = User.new
            user.Fname = "James"

            expect(user.valid?).to be_falsey
        end
    end

    context "Validade de uma descrição de Usuario" do
        it "Descrição completa" do
            user = User.new
            user.Fname = "James"
            user.Mname = "Go"
            user.senha = "34597654432"
            user.username = "james"

            expect(user.descricao_completa).to eql("First Name: James, Middle Name: Go, Usuário: james, Senha: 34597654432")
        end
    end
end
