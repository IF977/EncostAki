class AddNameToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :name, :string
  end
end
