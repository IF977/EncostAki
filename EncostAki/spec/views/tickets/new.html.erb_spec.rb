require 'rails_helper'

RSpec.describe "tickets/new", type: :view do
  before(:each) do
    assign(:ticket, Ticket.new(
      :ano => 1,
      :mes => 1,
      :processo_numero => 1,
      :solicitacao_descricao => "MyString",
      :solicitacao_regional => "MyString",
      :solicitacao_bairro => "MyString",
      :solicitacao_localidade => "MyString",
      :solicitacao_endereco => "MyString",
      :solicitacao_roteiro => "MyString",
      :rpa_codigo => 1,
      :rpa_nome => "MyString",
      :solicitacao_microrregiao => "MyString",
      :solicitacao_plantao => "MyString",
      :solicitacao_origem_chamado => "MyString",
      :latitude => 1.5,
      :longitude => 1.5,
      :solicitacao_vitimas => "MyString",
      :solicitacao_vitimas_fatais => "MyString",
      :solicitacao_vitimas_fatais => "MyString",
      :processo_tipo => "MyString",
      :processo_origem => "MyString",
      :processo_localizacao => "MyString",
      :processo_status => "MyString",
      :processo_data_conclusao => "MyString"
    ))
  end

  it "renders new ticket form" do
    render

    assert_select "form[action=?][method=?]", tickets_path, "post" do

      assert_select "input[name=?]", "ticket[ano]"

      assert_select "input[name=?]", "ticket[mes]"

      assert_select "input[name=?]", "ticket[processo_numero]"

      assert_select "input[name=?]", "ticket[solicitacao_descricao]"

      assert_select "input[name=?]", "ticket[solicitacao_regional]"

      assert_select "input[name=?]", "ticket[solicitacao_bairro]"

      assert_select "input[name=?]", "ticket[solicitacao_localidade]"

      assert_select "input[name=?]", "ticket[solicitacao_endereco]"

      assert_select "input[name=?]", "ticket[solicitacao_roteiro]"

      assert_select "input[name=?]", "ticket[rpa_codigo]"

      assert_select "input[name=?]", "ticket[rpa_nome]"

      assert_select "input[name=?]", "ticket[solicitacao_microrregiao]"

      assert_select "input[name=?]", "ticket[solicitacao_plantao]"

      assert_select "input[name=?]", "ticket[solicitacao_origem_chamado]"

      assert_select "input[name=?]", "ticket[latitude]"

      assert_select "input[name=?]", "ticket[longitude]"

      assert_select "input[name=?]", "ticket[solicitacao_vitimas]"

      assert_select "input[name=?]", "ticket[solicitacao_vitimas_fatais]"

      assert_select "input[name=?]", "ticket[solicitacao_vitimas_fatais]"

      assert_select "input[name=?]", "ticket[processo_tipo]"

      assert_select "input[name=?]", "ticket[processo_origem]"

      assert_select "input[name=?]", "ticket[processo_localizacao]"

      assert_select "input[name=?]", "ticket[processo_status]"

      assert_select "input[name=?]", "ticket[processo_data_conclusao]"
    end
  end
end
