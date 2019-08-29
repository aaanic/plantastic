class SendRemindersJob < ApplicationJob
  queue_as :default

  def perform(reminder_id)


    puts "I'm starting to send reminders for the reminder you didnt get"
    sleep 3
    puts "OK I'm done now...kidding!"
    puts "reminder id = #{reminder_id}"
  end
end
