require 'rails_helper'
require 'Support_requests'
require 'devise_test'

describe SupportRequest do
    numeros = /^(-)?[0-9]{0,15}[.]{0,1}[0-9]{0,4}+$/
    caracteres_permitidos = /[a-zA-Z0-9]/
    
    current_sup = SupportRequest.new
    
    
    it "is a instance of a SupportRequest?" do
        expect(current_sup).to be_an_instance_of(SupportRequest)
    end
    
    it "has an valid ano?" do
        expect(current_sup.ano).not_to be_empty
        expect(current_sup.ano).to be_an_instance_of(String)
        expect(current_sup.ano).to match (caracteres_permitidos)
    end
    
    it "has an valid mes?" do
        expect(current_sup.mes).not_to be_empty
        expect(current_sup.mes).to be_an_instance_of(String)
        expect(current_sup.mes).to match (caracteres_permitidos)
    end
    
    it "has an valid precesso_numero?" do
       expect(current_sup.processo_numero).not_to be_empty
       expect(current_sup.processo_numero).to be_an_instance_of(String)
       expect(current_sup.processo_numero).to match (caracteres_permitidos)
    end
    
    it "has an valid solicitacao_data?" do
        expect(current_sup.solicitacao_data).not_to be_empty
        expect(current_sup.solicitacao_data).to be_an_instance_of(String)
        expect(current_sup.solicitacao_data).to match(caracteres_permitidos)
    end
    
    it "has an valid solicitacao_hora?" do
        expect(current_sup.solicitacao_hora).not_to be_empty
        expect(current_sup.solicitacao_hora).to be_an_instance_of(String)
        expect(current_sup.solicitacao_hora).to match(caracteres_permitidos)
    end
    
    it "has an valid solicitacao_descricao?" do
        expect(current_sup.solicitacao_descricao).to be_an_instance_of(String)
        expect(current_sup.solicitacao_descricao).to match(numeros)
    end
    
    it "has an valid solicitacao_regional?" do
        expect(current_sup.solicitacao_regional).to be_an_instance_of(String)
        expect(current_sup.solicitacao_regional).to match(numeros)
    end
    
        it "has an valid solicitacao_bairro?" do
        expect(current_sup.solicitacao_bairro).not_to be_empty
        expect(current_sup.solicitacao_bairro).to be_an_instance_of(String)
        expect(current_sup.solicitacao_bairro).to match (caracteres_permitidos)
    end
    
    it "has an valid solicitacao_localidade?" do
        expect(current_sup.solicitacao_localidade).not_to be_empty
        expect(current_sup.solicitacao_localidade).to be_an_instance_of(String)
        expect(current_sup.solicitacao_localidade).to match (caracteres_permitidos)
    end
    
    it "has an valid solicitacao_endereco?" do
       expect(current_sup.solicitacao_endereco).not_to be_empty
       expect(current_sup.solicitacao_endereco).to be_an_instance_of(String)
       expect(current_sup.solicitacao_endereco).to match (caracteres_permitidos)
    end
    
    it "has an valid solicitacao_roteiro?" do
        expect(current_sup.solicitacao_roteiro).not_to be_empty
        expect(current_sup.solicitacao_roteiro).to be_an_instance_of(String)
        expect(current_sup.solicitacao_roteiro).to match(caracteres_permitidos)
    end
    
    it "has an valid rpa_codigo?" do
        expect(current_sup.rpa_codigo).not_to be_empty
        expect(current_sup.rpa_codigo).to be_an_instance_of(String)
        expect(current_sup.rpa_codigo).to match(caracteres_permitidos)
    end
    
    it "has an valid rpa_nome?" do
        expect(current_sup.rpa_nome).to be_an_instance_of(String)
        expect(current_sup.rpa_nome).to match(numeros)
    end
    
    it "has an valid solicitacao_microrregiao?" do
        expect(current_sup.solicitacao_microrregiao).to be_an_instance_of(String)
        expect(current_sup.solicitacao_microrregiao).to match(numeros)
    end
    
        it "has an valid solicitacao_plantao?" do
        expect(current_sup.solicitacao_plantao).not_to be_empty
        expect(current_sup.solicitacao_plantao).to be_an_instance_of(String)
        expect(current_sup.solicitacao_plantao).to match (caracteres_permitidos)
    end
    
    it "has an valid solicitacao_origem_chamado?" do
       expect(current_sup.solicitacao_origem_chamado).not_to be_empty
       expect(current_sup.solicitacao_origem_chamado).to be_an_instance_of(String)
       expect(current_sup.solicitacao_origem_chamado).to match (caracteres_permitidos)
    end
    
    it "has an valid latitude?" do
        expect(current_sup.latitude).not_to be_empty
        expect(current_sup.latitude).to be_an_instance_of(String)
        expect(current_sup.latitude).to match(caracteres_permitidos)
    end
    
    it "has an valid longitude?" do
        expect(current_sup.longitude).not_to be_empty
        expect(current_sup.longitude).to be_an_instance_of(String)
        expect(current_sup.longitude).to match(caracteres_permitidos)
    end
    
    it "has an valid solicitacao_vitimas?" do
        expect(current_sup.solicitacao_vitimas).to be_an_instance_of(String)
        expect(current_sup.solicitacao_vitimas).to match(numeros)
    end
    
    
    it "has an valid processo_tipo?" do
        expect(current_sup.processo_tipo).not_to be_empty
        expect(current_sup.processo_tipo).to be_an_instance_of(String)
        expect(current_sup.processo_tipo).to match (caracteres_permitidos)
    end
    
    it "has an valid processo_origem?" do
        expect(current_sup.processo_origem).not_to be_empty
        expect(current_sup.processo_origem).to be_an_instance_of(String)
        expect(current_sup.processo_origem).to match (caracteres_permitidos)
    end
    
    it "has an valid processo_localizacao?" do
       expect(current_sup.processo_localizacao).not_to be_empty
       expect(current_sup.processo_localizacao).to be_an_instance_of(String)
       expect(current_sup.processo_localizacao).to match (caracteres_permitidos)
    end
    
    it "has an valid processo_status?" do
        expect(current_sup.processo_status).not_to be_empty
        expect(current_sup.processo_status).to be_an_instance_of(String)
        expect(current_sup.processo_status).to match(caracteres_permitidos)
    end
    
    it "has an valid processo_data_conclusao?" do
        expect(current_sup.processo_data_conclusao).not_to be_empty
        expect(current_sup.processo_data_conclusao).to be_an_instance_of(String)
        expect(current_sup.processo_data_conclusao).to match(caracteres_permitidos)
    end
   
end