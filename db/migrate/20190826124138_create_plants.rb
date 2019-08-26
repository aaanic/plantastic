class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :latin_name
      t.string :type
      t.string :max_height
      t.string :care_level
      t.string :light_preference
      t.text :description
      t.string :plant_image

      t.timestamps
    end
  end
end
