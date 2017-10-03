class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :cpf, :limit => 8
      t.string :username
      t.integer :cep, :limit => 8
      t.string :complement
      t.integer :house_number, :limit => 8 

      t.timestamps
    end
  end
end
