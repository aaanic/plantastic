namespace :reminders do
  desc "TODO"
  task send_reminders: :environment do
    reminders = Reminder.all
    reminders.each do |rem|
      SendRemindersJob.perform_later(rem.id)
    end
    puts "whwhwhhwhwww"
  end

end
