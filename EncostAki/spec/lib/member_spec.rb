require 'spec_helper'
require 'rails_helper'
require 'member'

describe Member do
    regex_num = /[0-9]/
    valid_input = "[a-zA-Z ]"
    invalid_input = "[^A-Za-z0-9 ]"
    obj = Member.new
    obj.email = 'pvls@cin.ufpe.br'
    
    it "Checar instancia de member" do
        expect(obj).to be_an_instance_of(Member)
    end
    
    it "O email é válido?" do
        expect(obj.email).to match(valid_input)
        
    end
end