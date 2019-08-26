class CreateEnvironmentPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :environment_plants do |t|
      t.string :nickname
      t.references :plant, foreign_key: true, index: true
      t.references :environment, foreign_key: true, index: true

      t.timestamps
    end
  end
end
