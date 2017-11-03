class CreateAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :areas do |t|
      t.string :regional
      t.string :endereco
      t.string :bairro
      t.string :localidade
      t.string :descricao
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
