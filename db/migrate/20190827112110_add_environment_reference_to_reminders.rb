class AddEnvironmentReferenceToReminders < ActiveRecord::Migration[5.2]
  def change
    add_reference :reminders, :environment, index: true
  end
end
