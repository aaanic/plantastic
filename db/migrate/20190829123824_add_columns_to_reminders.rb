class AddColumnsToReminders < ActiveRecord::Migration[5.2]
  def change
    add_column :reminders, :frequency, :string
  end
end
