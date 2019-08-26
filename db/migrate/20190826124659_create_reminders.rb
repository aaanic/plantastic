class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :name
      t.datetime :date
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
