require 'rails_helper'
require 'Area'
require 'devise_test'

describe Area do
    numeros = /^(-)?[0-9]{0,15}[.]{0,1}[0-9]{0,4}+$/
    caracteres_permitidos = /[a-zA-Z0-9]/
    
    current_area = Area.new
    
    
    it "is a instance of a Area?" do
        expect(current_area).to be_an_instance_of(Area)
    end
    
    it "has an valid regional?" do
        expect(current_area.regional).not_to be_empty
        expect(current_area.regional).to be_an_instance_of(String)
        expect(current_area.regional).to match (caracteres_permitidos)
    end
    
    it "has an valid endereco?" do
        expect(current_area.endereco).not_to be_empty
        expect(current_area.endereco).to be_an_instance_of(String)
        expect(current_area.endereco).to match (caracteres_permitidos)
    end
    
    it "has an valid bairro?" do
       expect(current_area.bairro).not_to be_empty
       expect(current_area.bairro).to be_an_instance_of(String)
       expect(current_area.bairro).to match (caracteres_permitidos)
    end
    
    it "has an valid localidade?" do
        expect(current_area.localidade).not_to be_empty
        expect(current_area.localidade).to be_an_instance_of(String)
        expect(current_area.localidade).to match(caracteres_permitidos)
    end
    
    it "has an valid descricao?" do
        expect(current_area.descricao).not_to be_empty
        expect(current_area.descricao).to be_an_instance_of(String)
        expect(current_area.descricao).to match(caracteres_permitidos)
    end
    
    it "has an valid latitude?" do
        expect(current_area.latitude).to be_an_instance_of(String)
        expect(current_area.latitude).to match(numeros)
    end
    
    it "has an valid longitude?" do
        expect(current_area.longitude).to be_an_instance_of(String)
        expect(current_area.longitude).to match(numeros)
    end
    
end