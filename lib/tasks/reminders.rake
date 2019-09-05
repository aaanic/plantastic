namespace :reminders do
  desc "TODO"
  task send_reminders: :environment do
    reminders = Reminder.where()
    reminders.each do |rem|
      SendRemindersJob.perform_later(rem.id)
    end
  end

end
