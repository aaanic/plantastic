class AddPhotoToEnvironmentPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :environment_plants, :photo, :string
  end
end
