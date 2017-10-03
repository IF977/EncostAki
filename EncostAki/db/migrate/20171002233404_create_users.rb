class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :cpf
      t.string :username
      t.integer :cep
      t.string :complement
      t.integer :house_number

      t.timestamps
    end
  end
end
