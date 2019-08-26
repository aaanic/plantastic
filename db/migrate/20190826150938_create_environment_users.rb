class CreateEnvironmentUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :environment_users do |t|
      t.references :user, foreign_key: true, index: true
      t.references :environment, foreign_key: true, index: true

      t.timestamps
    end
  end
end
