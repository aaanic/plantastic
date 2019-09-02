class Reminder < ApplicationRecord
  belongs_to :user
  belongs_to :environment

  after_create :schedule_reminder

  def self.send_in_the_future(id, date)
    puts "///////////////////"
    puts "Rescheduling the job for later..."
    ReminderMailer.set(wait_until: date).perform_later(id)
  end

  private

  def schedule_reminder
    puts "this is the shedule bit"
    unless self.frequency == 'none'
      SendRemindersJob.set(wait_until: self.date).perform_later(self.id)

      if self.frequency == 'once-a-day'
        new_date = self.date + (20)
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)
      end
    end
  end
end
