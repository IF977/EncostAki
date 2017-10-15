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
            user.senha = "34597654432"
            user.Fname = "James"
            user.senha = "34597654432"
            user.username = "james"


            expect(user.descricao_completa).to eql("Fname: James, senha: 34597654432, Usuário: james")
        end
    end
end
