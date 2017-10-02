class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.number :cpf
      t.string :username
      t.number :cep
      t.string :complement
      t.number :house_number

      t.timestamps
    end
  end
end
