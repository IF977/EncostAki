class AddRoleToMembers < ActiveRecord::Migration[5.1]
  def change
    add_column :members, :role, :integer, :default => 0
  end
end
