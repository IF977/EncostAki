require 'rails_helper'

RSpec.describe "support_requests/index", type: :view do
  before(:each) do
    assign(:support_requests, [
      SupportRequest.create!(
        :ano => 2,
        :mes => "Mes",
        :processo_numero => "Processo Numero",
        :solicitacao_descricao => "Solicitacao Descricao",
        :solicitacao_regional => "Solicitacao Regional",
        :solicitacao_bairro => "Solicitacao Bairro",
        :solicitacao_localidade => "Solicitacao Localidade",
        :solicitacao_endereco => "Solicitacao Endereco",
        :solicitacao_roteiro => "Solicitacao Roteiro",
        :rpa_codigo => 3,
        :rpa_nome => "Rpa Nome",
        :solicitacao_microrregiao => "Solicitacao Microrregiao",
        :solicitacao_plantao => "Solicitacao Plantao",
        :solicitacao_origem_chamado => "Solicitacao Origem Chamado",
        :latitude => 4.5,
        :longitude => 5.5,
        :solicitacao_vitimas => "Solicitacao Vitimas",
        :solicitacao_vitimas_fatais => "Solicitacao Vitimas Fatais",
        :processo_tipo => "Processo Tipo",
        :processo_origem => "Processo Origem",
        :processo_localizacao => "Processo Localizacao",
        :processo_status => "Processo Status"
      ),
      SupportRequest.create!(
        :ano => 2,
        :mes => "Mes",
        :processo_numero => "Processo Numero",
        :solicitacao_descricao => "Solicitacao Descricao",
        :solicitacao_regional => "Solicitacao Regional",
        :solicitacao_bairro => "Solicitacao Bairro",
        :solicitacao_localidade => "Solicitacao Localidade",
        :solicitacao_endereco => "Solicitacao Endereco",
        :solicitacao_roteiro => "Solicitacao Roteiro",
        :rpa_codigo => 3,
        :rpa_nome => "Rpa Nome",
        :solicitacao_microrregiao => "Solicitacao Microrregiao",
        :solicitacao_plantao => "Solicitacao Plantao",
        :solicitacao_origem_chamado => "Solicitacao Origem Chamado",
        :latitude => 4.5,
        :longitude => 5.5,
        :solicitacao_vitimas => "Solicitacao Vitimas",
        :solicitacao_vitimas_fatais => "Solicitacao Vitimas Fatais",
        :processo_tipo => "Processo Tipo",
        :processo_origem => "Processo Origem",
        :processo_localizacao => "Processo Localizacao",
        :processo_status => "Processo Status"
      )
    ])
  end

  it "renders a list of support_requests" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Mes".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Regional".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Localidade".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Roteiro".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Rpa Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Microrregiao".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Plantao".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Origem Chamado".to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Vitimas".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Vitimas Fatais".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Origem".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Localizacao".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Status".to_s, :count => 2
  end
end
