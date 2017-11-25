class CreateMembros < ActiveRecord::Migration[5.1]
  def change
    create_table :membros do |t|
      t.boolean :admin
      t.string :email

      t.timestamps
    end
  end
end
