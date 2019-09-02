class RemoveDateFromReminders < ActiveRecord::Migration[5.2]
  def change
    remove_column :reminders, :date
  end
end
