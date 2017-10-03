class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :cpf
      t.string :username
      t.integer :cep
      t.text :complement
      t.integer :house_number

      t.timestamps null: false
    end
  end
end
