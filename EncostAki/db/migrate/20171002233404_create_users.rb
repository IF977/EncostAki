class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :Fname
      t.string :Mname
      t.string :username
      t.integer :senha 

      t.timestamps
    end
  end
end
