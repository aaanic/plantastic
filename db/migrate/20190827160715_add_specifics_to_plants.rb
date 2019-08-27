class AddSpecificsToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :specifics, :text
  end
end
