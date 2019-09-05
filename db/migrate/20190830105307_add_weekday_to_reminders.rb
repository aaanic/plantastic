class AddWeekdayToReminders < ActiveRecord::Migration[5.2]
  def change
    add_column :reminders, :weekday, :string
  end
end
