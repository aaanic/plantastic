class AddHoursToReminders < ActiveRecord::Migration[5.2]
  def change
    add_column :reminders, :hours, :integer
  end
end
