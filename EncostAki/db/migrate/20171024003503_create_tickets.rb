class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :ano
      t.integer :mes
      t.integer :processo_numero
      t.date :solicitacao_data
      t.datetime :solicitacao_hora
      t.string :solicitacao_descricao
      t.string :solicitacao_regional
      t.string :solicitacao_bairro
      t.string :solicitacao_localidade
      t.string :solicitacao_endereco
      t.string :solicitacao_roteiro
      t.integer :rpa_codigo
      t.string :rpa_nome
      t.string :solicitacao_microrregiao
      t.string :solicitacao_plantao
      t.string :solicitacao_origem_chamado
      t.float :latitude
      t.float :longitude
      t.string :solicitacao_vitimas
      t.string :solicitacao_vitimas_fatais
      t.string :solicitacao_vitimas_fatais
      t.string :processo_tipo
      t.string :processo_origem
      t.string :processo_localizacao
      t.string :processo_status
      t.string :processo_data_conclusao

      t.timestamps
    end
  end
end
