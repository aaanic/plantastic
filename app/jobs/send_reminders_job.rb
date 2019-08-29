class SendRemindersJob < ApplicationJob
  queue_as :default

  def perform(reminder_id)
    # send email....
    reminder
    puts "I'm starting to send reminders for the reminder you didnt get"

    puts "reminder id = #{reminder_id}"
  end
end
