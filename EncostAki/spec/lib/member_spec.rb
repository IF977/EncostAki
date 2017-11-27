require 'rails_helper'
require 'Member'
require 'devise_test'

describe Member do
    numeros = /[0-9]/
    caracteres_permitidos = /[a-zA-Z0-9]/
    email_valido = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    
    current_member = Member.new
    
    
    it "is a instance of a User?" do
        expect(current_member).to be_an_instance_of(Member)
    end
    
    it "has an valid email?" do
        expect(current_member.email).not_to be_empty
        expect(current_member.email).to match(email_valido)
        expect(current_member.email).to be_an_instance_of(String)
        expect(current_member.email).to match (caracteres_permitidos)
    end
    
    it "has an valid password?" do
        expect(current_member.password).not_to be_empty
        expect(current_member.password).to match (caracteres_permitidos)
    end
    
    it "has an valid provider?" do
       expect(current_member.provider).not_to be_empty
       expect(current_member.provider).to match (caracteres_permitidos)
    end
    
    it "has an valid uid?" do
        expect(current_member.uid).not_to be_empty
        expect(current_member.uid).to match(numeros)
    end
end