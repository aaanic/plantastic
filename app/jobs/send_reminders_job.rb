class SendRemindersJob < ApplicationJob
  queue_as :default

  def perform(reminder_id)

    @reminder = Reminder.find(reminder_id)
    ReminderMailer.with(user: @reminder.user).reminder.deliver_later
    if @reminder.frequency == 'once-a-day'
      new_date = @reminder.date + (20)
      SendRemindersJob.set(wait_until: new_date).perform_later(reminder.id)
    end
  end
end
