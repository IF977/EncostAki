require 'rails_helper'

RSpec.describe "support_requests/show", type: :view do
  before(:each) do
    @support_request = assign(:support_request, SupportRequest.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Mes/)
    expect(rendered).to match(/Processo Numero/)
    expect(rendered).to match(/Solicitacao Descricao/)
    expect(rendered).to match(/Solicitacao Regional/)
    expect(rendered).to match(/Solicitacao Bairro/)
    expect(rendered).to match(/Solicitacao Localidade/)
    expect(rendered).to match(/Solicitacao Endereco/)
    expect(rendered).to match(/Solicitacao Roteiro/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Rpa Nome/)
    expect(rendered).to match(/Solicitacao Microrregiao/)
    expect(rendered).to match(/Solicitacao Plantao/)
    expect(rendered).to match(/Solicitacao Origem Chamado/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/Solicitacao Vitimas/)
    expect(rendered).to match(/Solicitacao Vitimas Fatais/)
    expect(rendered).to match(/Processo Tipo/)
    expect(rendered).to match(/Processo Origem/)
    expect(rendered).to match(/Processo Localizacao/)
    expect(rendered).to match(/Processo Status/)
  end
end
