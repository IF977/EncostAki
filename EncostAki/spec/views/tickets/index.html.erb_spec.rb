require 'rails_helper'

RSpec.describe "tickets/index", type: :view do
  before(:each) do
    assign(:tickets, [
      Ticket.create!(
        :ano => 2,
        :mes => 3,
        :processo_numero => 4,
        :solicitacao_descricao => "Solicitacao Descricao",
        :solicitacao_regional => "Solicitacao Regional",
        :solicitacao_bairro => "Solicitacao Bairro",
        :solicitacao_localidade => "Solicitacao Localidade",
        :solicitacao_endereco => "Solicitacao Endereco",
        :solicitacao_roteiro => "Solicitacao Roteiro",
        :rpa_codigo => 5,
        :rpa_nome => "Rpa Nome",
        :solicitacao_microrregiao => "Solicitacao Microrregiao",
        :solicitacao_plantao => "Solicitacao Plantao",
        :solicitacao_origem_chamado => "Solicitacao Origem Chamado",
        :latitude => 6.5,
        :longitude => 7.5,
        :solicitacao_vitimas => "Solicitacao Vitimas",
        :solicitacao_vitimas_fatais => "Solicitacao Vitimas Fatais",
        :solicitacao_vitimas_fatais => "Solicitacao Vitimas Fatais",
        :processo_tipo => "Processo Tipo",
        :processo_origem => "Processo Origem",
        :processo_localizacao => "Processo Localizacao",
        :processo_status => "Processo Status",
        :processo_data_conclusao => "Processo Data Conclusao"
      ),
      Ticket.create!(
        :ano => 2,
        :mes => 3,
        :processo_numero => 4,
        :solicitacao_descricao => "Solicitacao Descricao",
        :solicitacao_regional => "Solicitacao Regional",
        :solicitacao_bairro => "Solicitacao Bairro",
        :solicitacao_localidade => "Solicitacao Localidade",
        :solicitacao_endereco => "Solicitacao Endereco",
        :solicitacao_roteiro => "Solicitacao Roteiro",
        :rpa_codigo => 5,
        :rpa_nome => "Rpa Nome",
        :solicitacao_microrregiao => "Solicitacao Microrregiao",
        :solicitacao_plantao => "Solicitacao Plantao",
        :solicitacao_origem_chamado => "Solicitacao Origem Chamado",
        :latitude => 6.5,
        :longitude => 7.5,
        :solicitacao_vitimas => "Solicitacao Vitimas",
        :solicitacao_vitimas_fatais => "Solicitacao Vitimas Fatais",
        :solicitacao_vitimas_fatais => "Solicitacao Vitimas Fatais",
        :processo_tipo => "Processo Tipo",
        :processo_origem => "Processo Origem",
        :processo_localizacao => "Processo Localizacao",
        :processo_status => "Processo Status",
        :processo_data_conclusao => "Processo Data Conclusao"
      )
    ])
  end

  it "renders a list of tickets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Regional".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Localidade".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Roteiro".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Rpa Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Microrregiao".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Plantao".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Origem Chamado".to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => 7.5.to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Vitimas".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Vitimas Fatais".to_s, :count => 2
    assert_select "tr>td", :text => "Solicitacao Vitimas Fatais".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Tipo".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Origem".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Localizacao".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Status".to_s, :count => 2
    assert_select "tr>td", :text => "Processo Data Conclusao".to_s, :count => 2
  end
end
