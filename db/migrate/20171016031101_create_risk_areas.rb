class CreateRiskAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :risk_areas do |t|
      t.string :regional
      t.string :endereco
      t.string :bairro
      t.string :localidade
      t.string :descricao
      t.float :longitude

      t.timestamps
    end
  end
end
