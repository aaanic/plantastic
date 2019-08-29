class Reminder < ApplicationRecord
  belongs_to :user
  belongs_to :environment

  after_create :schedule_reminder

  private

  def schedule_reminder
    puts "this is the shedule bit"
    unless self.frequency == 'none'
      SendRemindersJob.set(wait_until: self.date).perform_later(self.id)
    end
  end
end
