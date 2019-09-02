class Reminder < ApplicationRecord
  belongs_to :user
  belongs_to :environment

  after_create :schedule_reminder

  private

  def getDayInTime(weekday)
    if [1,2,3,4,5,6,7,8,9].include?(self.hours)
      preWeekday = DateTime.parse(DateTime.parse(weekday).strftime("%Y-%m-%dT0#{self.hours}:00:00%z"))
    else
      preWeekday = DateTime.parse(DateTime.parse(weekday).strftime("%Y-%m-%dT#{self.hours}:00:00%z"))
    end

    (preWeekday < DateTime.parse(DateTime.now.strftime("%Y-%m-%dT00:00:00%z"))) ? (DateTime.parse(weekday) + 7) : DateTime.parse(weekday)
  end


  def schedule_reminder
    unless self.frequency == 'NONE'
      actualDate = getDayInTime(self.weekday)
      waitDate = DateTime.parse(actualDate.strftime("%Y-%m-%dT00:00:00%z"))

      SendRemindersJob.set(wait_until: waitDate).perform_later(self.id)

      if self.frequency == 'DAILY'
        # new_date = DateTime.parse(waitDate.strftime("%Y-%m-%dT16:00:00%z"))
        new_date = waitDate + 1
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)

      elsif self.frequency == 'WEEKLY'
        new_date = waitDate + 7
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)

      elsif self.frequency == 'EVERY TWO WEEKS'
        new_date = waitDate + 14
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)

      elsif self.frequency == 'MONTHLY'
        new_date = waitDate + 30
        SendRemindersJob.set(wait_until: new_date).perform_later(self.id)
      end

    end
  end
end
