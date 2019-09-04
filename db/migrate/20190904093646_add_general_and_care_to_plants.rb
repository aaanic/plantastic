class AddGeneralAndCareToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :general, :text
    add_column :plants, :care, :text
  end
end
