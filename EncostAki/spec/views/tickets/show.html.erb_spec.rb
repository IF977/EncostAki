require 'rails_helper'

RSpec.describe "tickets/show", type: :view do
  before(:each) do
    @ticket = assign(:ticket, Ticket.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Solicitacao Descricao/)
    expect(rendered).to match(/Solicitacao Regional/)
    expect(rendered).to match(/Solicitacao Bairro/)
    expect(rendered).to match(/Solicitacao Localidade/)
    expect(rendered).to match(/Solicitacao Endereco/)
    expect(rendered).to match(/Solicitacao Roteiro/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/Rpa Nome/)
    expect(rendered).to match(/Solicitacao Microrregiao/)
    expect(rendered).to match(/Solicitacao Plantao/)
    expect(rendered).to match(/Solicitacao Origem Chamado/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/7.5/)
    expect(rendered).to match(/Solicitacao Vitimas/)
    expect(rendered).to match(/Solicitacao Vitimas Fatais/)
    expect(rendered).to match(/Solicitacao Vitimas Fatais/)
    expect(rendered).to match(/Processo Tipo/)
    expect(rendered).to match(/Processo Origem/)
    expect(rendered).to match(/Processo Localizacao/)
    expect(rendered).to match(/Processo Status/)
    expect(rendered).to match(/Processo Data Conclusao/)
  end
end
