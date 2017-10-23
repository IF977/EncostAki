class AddFieldsToRiskArea < ActiveRecord::Migration[5.1]
  def change
    add_column :risk_areas, :latitude, :float
    add_column :risk_areas, :longitude, :float
  end
end
