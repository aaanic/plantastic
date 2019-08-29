class SendRemindersJob < ApplicationJob
  queue_as :default

  def perform(reminder_id)
    @reminder = Reminder.find(reminder_id)

    ReminderMailer.with(user: @reminder.user).reminder.deliver_later
  end
end
